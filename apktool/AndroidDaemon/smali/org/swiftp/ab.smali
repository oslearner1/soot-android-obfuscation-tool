.class public abstract Lorg/swiftp/ab;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/swiftp/af;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/swiftp/af;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/swiftp/ab;->a:Lorg/swiftp/af;

    return-void
.end method


# virtual methods
.method public abstract getPasvIp()Ljava/net/InetAddress;
.end method

.method public abstract onPasv()I
.end method

.method public abstract onPort(Ljava/net/InetAddress;I)Z
.end method

.method public abstract onTransfer()Ljava/net/Socket;
.end method

.method public abstract reportTraffic(J)V
.end method
