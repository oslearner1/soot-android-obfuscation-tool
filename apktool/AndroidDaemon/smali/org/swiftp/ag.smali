.class public final Lorg/swiftp/ag;
.super Lorg/swiftp/ab;


# instance fields
.field private b:Ljava/net/Socket;

.field private c:I

.field private d:Lorg/swiftp/ProxyConnector;

.field private e:Ljava/net/InetAddress;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/swiftp/ab;-><init>()V

    invoke-direct {p0}, Lorg/swiftp/ag;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    iput-object v1, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    iput-object v1, p0, Lorg/swiftp/ag;->e:Ljava/net/InetAddress;

    iput v2, p0, Lorg/swiftp/ag;->c:I

    iput v2, p0, Lorg/swiftp/ag;->f:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final getPasvIp()Ljava/net/InetAddress;
    .locals 1

    invoke-static {}, Lorg/swiftp/ae;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/swiftp/ProxyConnector;->getProxyIp()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public final onPasv()I
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/swiftp/ag;->a()V

    invoke-static {}, Lorg/swiftp/ae;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v1

    iput-object v1, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    iget-object v1, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/swiftp/ag;->a:Lorg/swiftp/af;

    const-string v2, "Unexpected null proxyConnector in onPasv"

    invoke-virtual {v1, v3, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ag;->a()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v1}, Lorg/swiftp/ProxyConnector;->pasvListen()Lorg/swiftp/ah;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/swiftp/ag;->a:Lorg/swiftp/af;

    const-string v2, "Null ProxyDataSocketInfo"

    invoke-virtual {v1, v3, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-direct {p0}, Lorg/swiftp/ag;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/swiftp/ah;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Lorg/swiftp/ah;->getRemotePublicPort()I

    move-result v0

    iput v0, p0, Lorg/swiftp/ag;->c:I

    iget v0, p0, Lorg/swiftp/ag;->c:I

    goto :goto_0
.end method

.method public final onPort(Ljava/net/InetAddress;I)Z
    .locals 2

    invoke-direct {p0}, Lorg/swiftp/ag;->a()V

    invoke-static {}, Lorg/swiftp/ae;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    iput-object p1, p0, Lorg/swiftp/ag;->e:Ljava/net/InetAddress;

    iput p2, p0, Lorg/swiftp/ag;->f:I

    iget-object v0, p0, Lorg/swiftp/ag;->a:Lorg/swiftp/af;

    const-string v1, "ProxyDataSocketFactory client port settings stored"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onTransfer()Ljava/net/Socket;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/swiftp/ag;->a:Lorg/swiftp/af;

    const-string v2, "Unexpected null proxyConnector in onTransfer"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->w(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/swiftp/ag;->a:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "Unexpected null proxyConnector in onTransfer"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    iget-object v1, p0, Lorg/swiftp/ag;->e:Ljava/net/InetAddress;

    iget v2, p0, Lorg/swiftp/ag;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/ProxyConnector;->dataPortConnect(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    iget-object v0, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/swiftp/ag;->d:Lorg/swiftp/ProxyConnector;

    iget-object v2, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Lorg/swiftp/ProxyConnector;->pasvAccept(Ljava/net/Socket;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/swiftp/ag;->b:Ljava/net/Socket;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/swiftp/ag;->a:Lorg/swiftp/af;

    const-string v2, "proxyConnector pasvAccept failed"

    invoke-virtual {v1, v2}, Lorg/swiftp/af;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final reportTraffic(J)V
    .locals 2

    invoke-static {}, Lorg/swiftp/ae;->getProxyConnector()Lorg/swiftp/ProxyConnector;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/swiftp/ag;->a:Lorg/swiftp/af;

    const-string v1, "Can\'t report traffic, null ProxyConnector"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/swiftp/ProxyConnector;->a(J)V

    goto :goto_0
.end method
