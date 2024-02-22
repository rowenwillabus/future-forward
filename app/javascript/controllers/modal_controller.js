import { Controller } from "@hotwired/stimulus"

export default class extends Controller {


    // click the x on the modal
    closeModal(event) {
        this.element.parentElement.parentElement.previousElementSibling.click();
    }

    // on success form submit close modal and reload page
    handleModalSubmit(event) {
        if (event.detail.success) {
            this.closeModal(event);
            window.location.href = this.element.ownerDocument.defaultView.location.href;
        } else {
            console.log('failed');
        }
    }

    // remove the src from the modal turbo frame (triggered on modal close)
    removeSourcefromModal(event) {
        var turbo_tag = this.element.querySelector('#modal');
        turbo_tag.removeAttribute("src");
        var url = this.element.ownerDocument.defaultView.location.pathname;
        while (turbo_tag.hasChildNodes()) {
            turbo_tag.removeChild(turbo_tag.firstChild);
        }
    }
}
