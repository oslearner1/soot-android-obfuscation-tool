.class public Lorg/swiftp/u;
.super Lorg/swiftp/ad;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/swiftp/u;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/ad;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/swiftp/u;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/swiftp/u;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/u;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/swiftp/u;->b:Lorg/swiftp/SessionThread;

    invoke-virtual {v2}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/swiftp/u;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/swiftp/u;->violatesChroot(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "550 Invalid name or chroot violation\r\n"

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/swiftp/u;->b:Lorg/swiftp/SessionThread;

    invoke-virtual {v2, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/swiftp/u;->c:Lorg/swiftp/af;

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RNFR failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/u;->b:Lorg/swiftp/SessionThread;

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "450 Cannot rename nonexistent file\r\n"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/swiftp/u;->b:Lorg/swiftp/SessionThread;

    const-string v1, "350 Filename noted, now send RNTO\r\n"

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/u;->b:Lorg/swiftp/SessionThread;

    invoke-virtual {v0, v2}, Lorg/swiftp/SessionThread;->setRenameFrom(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
