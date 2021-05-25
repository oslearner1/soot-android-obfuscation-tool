.class public Lorg/swiftp/y;
.super Lorg/swiftp/ad;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/swiftp/y;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/ad;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lorg/swiftp/y;->c:Lorg/swiftp/af;

    const-string v1, "SYST executing"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/y;->b:Lorg/swiftp/SessionThread;

    const-string v1, "215 UNIX Type: L8\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/y;->c:Lorg/swiftp/af;

    const-string v1, "SYST finished"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    return-void
.end method
