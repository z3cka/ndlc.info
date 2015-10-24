---
title: Call for Papers
form:
  name: callForProposals
  fields:
    - name: primary-contact
      type: spacer
      title: Primary Contact
    - name: name
      label: Name
      placeholder: 'Enter your name'
      autofocus: 'on'
      type: text
      validate:
        required: true
    - name: title
      label: Title
      placeholder: 'Enter your title'
      type: text
      validate:
        required: true
    - name: institutional-affiliation
      label: Institutional Affiliation
      type: text
      validate:
        required: true
    - name: email
      label: Email
      placeholder: 'Enter your email address'
      type: text
      validate:
        rule: email
        required: true
    - name: phone
      label: Phone
      type: text
      validate:
        required: true

    - name: additional-participant
      type: spacer
      title: Additional participant
    - name: name-additional-participant
      label: Name
      placeholder: "Enter additional participant's name"
      type: text
    - name: title-additional-participant
      label: Title
      placeholder: "Enter additional participant's title"
      type: text
    - name: institutional-affiliation-additional-participant
      label: Institutional Affiliation
      type: text
    - name: email-additional-participant
      label: Email
      placeholder: "Enter additional participant's email address"
      type: text
    - name: phone-additional-participant
      label: Phone
      type: text

    - name: proposal-title
      label: Proposal title
      type: text
      validate:
        rule: email
        required: true
    - name: brief-abstract
      label: Brief Abstract (75 words)
      type: textarea
    # TODO: add file field here by adding multiple file uploads in formfilefield
    - name: detailed-description
      label: Detailed description
      placeholder: 'including learning outcomes, for proposal review (up to 250 words)'
      type: textarea
    - name: or-detailed-description
      type: display
      content: or
    - name: upload # TODO: make this file name dynamic in formfilefield
      type: file
      label: Detailed Description File
    - name: max-upload
      type: display
      content: (Max file upload size: 2MB)

    - name: program-track
      label: Program track
      type: radio
      options:
        collectionsAndAccess: collections and access
        programmingOutreachAdvocacy: programming, outreach, advocacy
        personnelManegementOrganization: personnel, manegement, organization
        challengingTopics: challenging topics

  buttons:
    - type: submit
      value: SUBMIT PAPER
    - type: reset
      value: Reset
  process:
    - save: null
      dateformat: Ymd-His
      extension: txt
      body: '{% include ''forms/data.txt.twig'' %}'
    - message: Thanks
    - display: thankyou
---

# Call for Papers