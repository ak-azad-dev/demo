/**
 * Validate User Form before submit
 */
function validateForm() {
    const name = document.getElementById("name").value.trim();
    const email = document.getElementById("email").value.trim();

    if (name === "") {
        alert("Name is required");
        document.getElementById("name").focus();
        return false;
    }

    if (email === "") {
        alert("Email is required");
        document.getElementById("email").focus();
        return false;
    }

    if (!validateEmail(email)) {
        alert("Please enter a valid email address");
        document.getElementById("email").focus();
        return false;
    }

    return true;
}

/**
 * Confirm delete action
 * @param url delete URL
 */
function confirmDelete(url) {
    if (confirm("Are you sure you want to delete this record?")) {
        window.location.href = url;
    }
}

/**
 * Email format validation
 */
function validateEmail(email) {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
}
