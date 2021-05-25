.class public interface abstract Lorg/jboss/netty/handler/codec/http/HttpMessage;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract clearHeaders()V
.end method

.method public abstract containsHeader(Ljava/lang/String;)Z
.end method

.method public abstract getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentLength(J)J
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaderNames()Ljava/util/Set;
.end method

.method public abstract getHeaders()Ljava/util/List;
.end method

.method public abstract getHeaders(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;
.end method

.method public abstract isChunked()Z
.end method

.method public abstract isKeepAlive()Z
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract setChunked(Z)V
.end method

.method public abstract setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
.end method
