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
            // Must match the 3 headers in your HTML table perfectly
            const customerTableColumnDefinition = [
                { "data": "name" },  // 1st column: Maps to <th>Name</th>
                { "data": "email" }, // 2nd column: Maps to <th>Email</th>
                {                    // 3rd column: Maps to <th>Actions</th>
                    "data": null,
                    "orderable": false,
                    "render": function (data, type, row) {
                        return `
                        <span class="action-links">
                            <button class="btn btn-xs btn-info" onclick="alert('Viewing: ${row.name}')">VIEW</button>
                        </span>
                    `;
                    }
                }
            ];

            const customerTable = $("#customerTable");

            // Correct way to clear and re-initialize modern DataTables
            if ($.fn.DataTable.isDataTable('#customerTable')) {
                customerTable.DataTable().destroy();
            }

            // Initialize DataTables with your JSON array (res)
            customerTable.DataTable({
                "searching": true,
                "pageLength": 3,
                "data": res, // This passes your JSON array directly
                "columns": customerTableColumnDefinition
            });
        }
    }

    return {
        _baseURL: _baseURL,
        getCustomers: getCustomers
    };
}()); // <-- Moved the () inside the wrapping parenthesis

$(document).ready(function () {
    customer._baseURL();
    customer.getCustomers();
});