.class public interface abstract Lorg/apache/http/auth/a;
.super Ljava/lang/Object;


# virtual methods
.method public abstract authenticate(Lorg/apache/http/auth/d;Lorg/apache/http/HttpRequest;)Lorg/apache/http/b;
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getSchemeName()Ljava/lang/String;
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isConnectionBased()Z
.end method

.method public abstract processChallenge(Lorg/apache/http/b;)V
.end method
