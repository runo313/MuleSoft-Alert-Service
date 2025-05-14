%dw 2.0
output application/json
---
{
	email: (payload.email default "") as String,
	phone: (payload.phone default "") as String,
	slack: (payload.slack default "") as String,
	method: (payload.preferred_method default "") as String,
	threshold: (payload.temperature_threshold default 0) as Number
}