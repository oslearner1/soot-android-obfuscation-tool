.class public Lorg/swiftp/x;
.super Lorg/swiftp/d;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/swiftp/x;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/d;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/swiftp/x;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/swiftp/x;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/x;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/swiftp/x;->doStorOrAppe(Ljava/lang/String;Z)V

    return-void
.end method
