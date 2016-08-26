-record (req, {connection = keep_alive,
			content_length,
			vsn,
			method,
			uri,
			args="",
			headers,
			body = <<>>}).