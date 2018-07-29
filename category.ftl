{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ __('title.category') }}: {{ page.category }} | {{ config.title }}{% endblock %}

{% block content %}
  <div class="post-block category">

    <div id="posts" class="posts-collapse">
      <div class="collection-title">
        <<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
          {{ page.category }}
          <small>{{  __('title.category')  }}</small>
        </<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
      </div>

      {% for post in page.posts %}
        {{ post_template.render(post) }}
      {% endfor %}
    </div>

  </div>

<#include "layout/_partials/pagination.ftl">

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
