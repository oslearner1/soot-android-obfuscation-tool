.class public Lorg/apache/http/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;


# direct methods
.method public constructor <init>(Lorg/apache/http/i;Ljava/net/ConnectException;)V
    .locals 2

    invoke-direct {p0}, Ljava/net/ConnectException;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHost()Lorg/apache/http/i;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
