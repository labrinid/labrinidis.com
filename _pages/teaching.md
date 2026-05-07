---
layout: page
permalink: /teaching/
title: teaching
nav: true
nav_order: 6
---

I have been teaching at the University of Pittsburgh since 2002, covering
database systems, data science, and distributed systems at both undergraduate
and graduate levels.

For current course materials, schedules, and assignments please refer to
the individual course page and Canvas.

## Current Courses

{% assign current_courses = site.teachings | where: "current", true %}
{% for course in current_courses %}
- [{{ course.course_number }} — {{ course.title }}]({{ course.permalink }}) *({{ course.term }} {{ course.year }})*
{% endfor %}

## Past Courses

{% assign past_courses = site.teachings | where: "current", false %}
{% for course in past_courses %}
- {{ course.course_number }} — {{ course.title }}
{% endfor %}
