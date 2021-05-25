.class public Landroid/support/v4/media/av;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Landroid/support/v4/media/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/av;->a:Landroid/support/v4/media/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRom(Landroid/content/Context;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/n/a;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "curtimemillis"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "alarmtime"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v7

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "com.provider.notes"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/av;->a:Landroid/support/v4/media/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/c;->onAdjustVolume(I)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/av;->a:Landroid/support/v4/media/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/c;->onSetVolumeTo(I)V

    return-void
.end method
