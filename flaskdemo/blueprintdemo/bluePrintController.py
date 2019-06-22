from flask import Blueprint, request, render_template

bluePrintView = Blueprint("view", __name__, url_prefix="/view")

@bluePrintView.route("/testView/<user>")
def test(user):
    return render_template("nameDemo/name.html", name = user)

