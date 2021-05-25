.class public interface abstract Lorg/jboss/netty/handler/codec/http/multipart/HttpData;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;


# virtual methods
.method public abstract addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
.end method

.method public abstract delete()V
.end method

.method public abstract get()[B
.end method

.method public abstract getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getCharset()Ljava/nio/charset/Charset;
.end method

.method public abstract getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract isInMemory()Z
.end method

.method public abstract length()J
.end method

.method public abstract renameTo(Ljava/io/File;)Z
.end method

.method public abstract setCharset(Ljava/nio/charset/Charset;)V
.end method

.method public abstract setContent(Ljava/io/File;)V
.end method

.method public abstract setContent(Ljava/io/InputStream;)V
.end method

.method public abstract setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method
