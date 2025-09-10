document.addEventListener("DOMContentLoaded", () => {
    const btn = document.getElementById("testBtn");
    if (btn) {
        btn.addEventListener("click", () => {
            alert("Button clicked! JavaScript is working 🎉");
        });
    }
});
