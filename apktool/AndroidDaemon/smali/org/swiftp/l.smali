.class public Lorg/swiftp/l;
.super Lorg/swiftp/ad;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/swiftp/l;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/ad;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/swiftp/l;->b:Lorg/swiftp/SessionThread;

    const-string v1, "200 NOOP ok\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    return-void
.end method
