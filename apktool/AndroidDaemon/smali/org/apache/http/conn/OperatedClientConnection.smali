.class public interface abstract Lorg/apache/http/conn/OperatedClientConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/f;


# virtual methods
.method public abstract getSocket()Ljava/net/Socket;
.end method

.method public abstract getTargetHost()Lorg/apache/http/i;
.end method

.method public abstract isSecure()Z
.end method

.method public abstract openCompleted(ZLorg/apache/http/params/a;)V
.end method

.method public abstract opening(Ljava/net/Socket;Lorg/apache/http/i;)V
.end method

.method public abstract update(Ljava/net/Socket;Lorg/apache/http/i;ZLorg/apache/http/params/a;)V
.end method
