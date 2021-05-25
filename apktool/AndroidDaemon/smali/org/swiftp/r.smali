.class public Lorg/swiftp/r;
.super Lorg/swiftp/ad;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/swiftp/r;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/ad;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/swiftp/r;->c:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "QUITting"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/r;->b:Lorg/swiftp/SessionThread;

    const-string v1, "221 Goodbye\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/r;->b:Lorg/swiftp/SessionThread;

    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->closeSocket()V

    return-void
.end method
