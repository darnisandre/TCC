package com.navin.util.jackson;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.ext.Provider;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

@Provider
@Consumes(MediaType.WILDCARD)
@Produces(MediaType.WILDCARD)
public class Configure  extends JacksonJsonProvider{

	private final static ObjectMapper mapper;
	static{
		mapper= new ObjectMapper();
		mapper.setSerializationInclusion(Include.NON_NULL);
		mapper.getSerializationConfig().withSerializationInclusion(Include.NON_NULL);
	}
	public Configure(){
		super(mapper);
	}

	@Override
	public void writeTo(Object value, Class<?> type, Type genericType, Annotation[] annotations, MediaType mediaType,
			MultivaluedMap<String, Object> httpHeaders, OutputStream entityStream) throws IOException {
		httpHeaders.putSingle(javax.ws.rs.core.HttpHeaders.CONTENT_TYPE, mediaType.toString() + ";charset=UTF-8");
		super.writeTo(value, type, genericType, annotations, mediaType, httpHeaders, entityStream);
	}
	
}
