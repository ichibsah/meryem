from django.views.decorators.csrf import csrf_protect
from django.views.generic import TemplateView
from django.shortcuts import render, HttpResponse
from .models import PostForm


class FormMixin:
    def save_form(self, form_class, request):
        """
        Saves the content of the form provided and returns the result
        """
        details = form_class(request.POST)
        if details.is_valid():
            post = details.save(commit=False)
            post.save()
            result = "Thank you"
            return HttpResponse(result, status=200)
        else:
            result = "Something went wrong. Please try again."
            return HttpResponse(result, status=400)

# @csrf_protect
class HomeView(FormMixin, TemplateView):
    template_name = "index.html"

    def post(self, request, *args, **kwargs):
        return self.save_form(PostForm, request)

    def get(self, request, *args, **kwargs):
        form = PostForm(None)
        return render(request, "index.html", {"form": form})


class ImpressumView(TemplateView):
    template_name = "impressum.html"