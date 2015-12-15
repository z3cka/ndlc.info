---
title: Questions?
published: true
metadata:
    description: Save the Date for the National Diversity in Libraries Conference (NDLC) 2016 UCLA, Los Angeles, California where library staff discuss issues relating to diversity.
    keywords: diversity, conference, NDLC, UCLA, Los Angeles, Save, Date, national, 2016, what is diversity, diversity committee, program, submit, submission, call for papers, proposal submission
    author: UCLA Library
visible: false

form:
  name: emailForm
  fields:
  
    - name: name
      label: Name
      placeholder: Enter your name
      autofocus: on
      autocomplete: on
      type: text
      validate:
        required: true
    - name: email
      label: Email
      placeholder: Enter your email address
      type: email
      validate:
        required: true
    - name: message
      label: Message
      placeholder: Enter your message
      type: textarea
      validate:
        required: true
    - name: g-recaptcha-response
      label: Captcha
      type: captcha
      recatpcha_site_key: aeio43kdk3idko3k4ikd4
      recaptcha_not_validated: 'Captcha not valid!'
      validate:
        required: true

  buttons:
    - type: submit
      value: Submit
    - type: reset
      value: Reset
  process:
    - captcha:
        recatpcha_secret: ENTER_YOUR_CAPTCHA_SECRET_KEY
    - email:
        subject: "[Question] {{ form.value.name|e }}"
        body: "{% include 'forms/data.html.twig' %}"
    - save:
        fileprefix: question-
        dateformat: Ymd-His-u
        extension: txt
        body: "{% include 'forms/data.txt.twig' %}"
    - message: Thank you for getting in touch!
    - display: thankyou
---

## Submit your comment or question.