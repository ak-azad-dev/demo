const customer = (function () {

    /**
     * Returns base url of the system
     * @returns {string}
     */
    function baseUrl() {
        return window.location.protocol + '//' + window.location.host + '/';
    }

    /**
     * returns baseURL
     * @returns {string}
     * @private
     */
    function _baseURL() {
        return baseUrl() + "customers/";
    }

    /**
     * Returns customer list
     * @returns {string}
     */
    function getCustomers() {
        const url = _baseURL() + 'list';

        $.ajax({
            url: url,
            type: 'GET',
            success: function (data) {
                _loadGridCallBack(data);
            },
            error: function (xhr, status, error) {
                console.error("Failed to fetch customers:", error);
            }
        });
    }

    /**
     * Success Callback of Load cargo scanning document
     * @param res
     * @private
     */
    function _loadGridCallBack(res) {
        if (res) {
            const customerTableColumnDefinition = [
                {
                    "data": "id",
                    "className": "customerId",
                    "orderable": false
                },
                { "data": "name" },
                { "data": "email" },
                {
                    "data": null,
                    "orderable": false,
                    "render": function (data, type, row) {
                        // FIX: Added data attributes to pass row data to the class click event
                        return `
                        <span class="action-links">
                            <button class="btn btn-info btn-view">VIEW</button>
                        </span>
                        
                        <span class="action-links">
                            <button class="btn btn-danger btn-delete">DELETE</button>
                        </span>
                    `;
                    }
                }
            ];

            const customerTable = $("#customerTable");

            if ($.fn.DataTable.isDataTable('#customerTable')) {
                customerTable.DataTable().destroy();
            }

            customerTable.DataTable({
                "searching": true,
                "pageLength": 3,
                "data": res,
                "columns": customerTableColumnDefinition
            });
        }
    }

    /**
     * View Details Function to trigger and populate Modal
     */
    function viewDetails() {
        $("#customerTable").on("click", "tbody .btn-view", function () {
            const customerId = $(this).closest('tr').find('.customerId').text();

            const url = _baseURL() + 'details/' + customerId;

            $.ajax({
                url: url,
                type: 'GET',
                success: function (res) {
                    // Populate modal text fields
                    $("#customerName").text(res.name);
                    $("#customerEmail").text(res.email);
                    $("#customerMobile").text(res.mobile);

                    // Open the modal
                    $("#customerModal").css("display", "flex");
                },
                error: function (xhr, status, error) {
                    console.error("Failed to fetch customers:", error);
                }
            });
        });
    }


    /**
     * View Details Function to trigger and populate Modal
     */
    function deleteCustomer() {
        $("#customerTable").on("click", "tbody .btn-delete", function () {
            const customerId = $(this).closest('tr').find('.customerId').text();

            const url = _baseURL() + 'delete/' + customerId;
            alert("Do you want to delete this record?");
            $.ajax({
                url: url,
                type: 'DELETE',
                success: function (res) {
                    // Populate modal text fields
                    alert(res);
                    getCustomers();
                },
                error: function (xhr, status, error) {
                    console.error("Failed to fetch customers:", error);
                }
            });
        });
    }

    function closeModalOnClickClose() {
        // Event listener to hide modal when clicking "X" or "Close" button
        $(".close-modal, .btn-close-modal").on("click", function() {
            $("#customerModal").css("display", "none");
        });
    }

    function closeModalOnClickOutside() {
        // FIX: Changed selector to $(window) to properly catch document-wide background clicks
        $(window).on("click", function(event) {
            if ($(event.target).is("#customerModal")) {
                $("#customerModal").css("display", "none");
            }
        });
    }

    return {
        _baseURL: _baseURL,
        getCustomers: getCustomers,
        viewDetails: viewDetails,
        deleteCustomer: deleteCustomer,
        closeModalOnClickClose: closeModalOnClickClose,
        closeModalOnClickOutside: closeModalOnClickOutside,
    };
}());

$(document).ready(function () {
    customer._baseURL();
    customer.getCustomers();

    // FIX: Initialize your modal event listeners on page load
    customer.viewDetails();
    customer.deleteCustomer();
    customer.closeModalOnClickClose();
    customer.closeModalOnClickOutside();
});