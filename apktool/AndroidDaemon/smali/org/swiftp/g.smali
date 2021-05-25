.class public Lorg/swiftp/g;
.super Lorg/swiftp/ad;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lorg/swiftp/g;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/ad;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/swiftp/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x4

    iget-object v0, p0, Lorg/swiftp/g;->c:Lorg/swiftp/af;

    const-string v1, "DELE executing"

    invoke-virtual {v0, v4, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/swiftp/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/g;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/swiftp/g;->b:Lorg/swiftp/SessionThread;

    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/swiftp/g;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lorg/swiftp/g;->violatesChroot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "550 Invalid name or chroot violation\r\n"

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/swiftp/g;->b:Lorg/swiftp/SessionThread;

    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/swiftp/g;->c:Lorg/swiftp/af;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELE failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lorg/swiftp/g;->c:Lorg/swiftp/af;

    const-string v1, "DELE finished"

    invoke-virtual {v0, v4, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "550 Can\'t DELE a directory\r\n"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "450 Error deleting file\r\n"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/swiftp/g;->b:Lorg/swiftp/SessionThread;

    const-string v2, "250 File successfully deleted\r\n"

    invoke-virtual {v0, v2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/swiftp/ak;->deletedFileNotify(Ljava/lang/String;)V

    goto :goto_1
.end method
