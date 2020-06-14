---
title: Contact
permalink: /contact
classes: contact wide
sidebar:
  position: right
head_stylesheets: "https://fonts.googleapis.com/css?family=Antic+Slab|Fira+Sans"

---

<p class="editable">{{ site.data.ui-text[site.locale].contact_form.welcome_message | default: "Get in touch with any feedback here."}}</p>
<!-- <script src="https://www.google.com/recaptcha/api.js"></script> -->
<!-- <form method="POST" action="https://smartforms.dev/submit/5edd5b1a0e4ff6358c36cd97"> -->
<form method="POST" action="https://app.99inbound.com/api/e/sOkLinuX" target="_blank">
	<div class="contain">
		<div class="split">
			<label for="name">{{ site.data.ui-text[site.locale].contact_form.name_field | default: "Name"}}</label>
			<input type="text" name="name" id="name" placeholder="{{ site.data.ui-text[site.locale].contact_form.name_placeholder | default: "eg. Joe"}}" required/>
		</div>
		<div class="split">
			<label for="email">{{ site.data.ui-text[site.locale].contact_form.email_field | default: "Email Address"}}</label>
			<input type="email" name="email" id="email" placeholder="{{ site.data.ui-text[site.locale].contact_form.email_placeholder | default: "eg. joebloggs@example.com"}}" required />
		</div>
	</div>
	<div class="contain">
			<label for="subject">{{ site.data.ui-text[site.locale].contact_form.subject_field | default: "Subject"}}</label>
			<select id="subject" name="subject">
			  {% for op in site.data.ui-text[site.locale].contact_form.subject_options %}
					<option value="{{op | downcase}}">{{op}}</option>
				{% endfor %}
			</select>
	</div>
	<label for="message">Message</label>
	<textarea name="message" id="message" placeholder="{{ site.data.ui-text[site.locale].contact_form.message_placeholder | default: "eg. I really like your site because..."}}"></textarea>
	<div style="position: absolute; left: -5000px;">
  	<input type="checkbox" name="thunderous_ultraviolet_argyle_hat" value="1" tabindex="-1" autocomplete="no">
	</div>
	<!-- <div class="g-recaptcha" data-sitekey="6LdLPQEVAAAAAAJRoE2ETKyCDYW9zGqRdoh_625y"></div> -->
	<input type="submit" value="{{ site.data.ui-text[site.locale].contact_form.submit_button | default: "Send Message"}}" />
</form>