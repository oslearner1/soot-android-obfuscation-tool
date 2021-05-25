.class final Lcom/vivo/PCTools/l/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/l/d;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/l/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/l/n;->a:Lcom/vivo/PCTools/l/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vivo/PCTools/l/n;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v0}, Lcom/vivo/PCTools/l/d;->h(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/PCTools/l/n;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v0}, Lcom/vivo/PCTools/l/d;->i(Lcom/vivo/PCTools/l/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_data = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/PCTools/l/n;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v2}, Lcom/vivo/PCTools/l/d;->i(Lcom/vivo/PCTools/l/d;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vivo/PCTools/l/n;->a:Lcom/vivo/PCTools/l/d;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/vivo/PCTools/l/d;->a(Lcom/vivo/PCTools/l/d;B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/l/n;->a:Lcom/vivo/PCTools/l/d;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/vivo/PCTools/l/d;->a(Lcom/vivo/PCTools/l/d;B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/vivo/PCTools/l/n;->a:Lcom/vivo/PCTools/l/d;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/vivo/PCTools/l/d;->a(Lcom/vivo/PCTools/l/d;B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
