.class public Lcom/vivo/PCTools/BookMark/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static c:Landroid/net/Uri;

.field private static d:Landroid/net/Uri;

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    const-string v0, "content://com.android.browser/images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/BookMark/p;->c:Landroid/net/Uri;

    const-string v0, "content://com.vivo.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/BookMark/p;->b:Landroid/net/Uri;

    const-string v0, "content://com.vivo.browser/images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/BookMark/p;->d:Landroid/net/Uri;

    const-class v0, Lcom/vivo/PCTools/BookMark/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Insert()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/vivo/PCTools/BookMark/BookmarkData;

    invoke-direct {v1}, Lcom/vivo/PCTools/BookMark/BookmarkData;-><init>()V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setVisits(I)V

    const-string v2, "http://3g.vivo.com.cn/"

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setTitle(Ljava/lang/String;)V

    const-wide/32 v2, 0xb2f7520

    invoke-virtual {v1, v2, v3}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setDate(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setFolderId(I)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setParentid(I)V

    const-string v2, "/storage/sdcard0/123.png"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/storage/sdcard0/123.png"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setFavicon([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/BookMark/p;->InsertBookMark(Ljava/util/ArrayList;)V

    return-void
.end method

.method public Insert73BookMark(Ljava/util/ArrayList;)V
    .locals 6

    sget-object v0, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InsertBookmark: BookmarkData size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkData;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "folder_id"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "created"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "bookmark"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "date"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "visits"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "thumbnail"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFavIcon()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public InsertBookMark(Ljava/util/ArrayList;)V
    .locals 7

    sget-object v0, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InsertBookmark: BookmarkData size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkData;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "folder"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "parent"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getParentid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "favicon"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFavIcon()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "url_key"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    const-string v4, "com.vivo.browser"

    invoke-static {v0, v4}, Lcom/vivo/PCTools/util/a;->getVerCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sget-object v4, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.vivo.browser versionCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/vivo/PCTools/BookMark/p;->b:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/vivo/PCTools/BookMark/p;->d:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/vivo/PCTools/BookMark/p;->c:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public InsertBookmark(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InsertBookmark: BookmarkData size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BookmarkFolder size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v5, v4

    :goto_1
    if-le v5, v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getFolderLevel()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getFolderLevel()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getFolderLevel()I

    move-result v0

    if-ne v5, v0, :cond_3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "title"

    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "folder"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne v4, v5, :cond_5

    move v0, v4

    :goto_4
    const-string v9, "parent"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v9, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->setId(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Insert folder: map return null, key is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getId()I

    move-result v0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v4

    goto :goto_5

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkData;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "title"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "url"

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "folder"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    :goto_6
    const-string v5, "parent"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Insert data: map return null, key is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getId()I

    move-result v0

    goto :goto_6
.end method

.method public InsertTest()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/sdcard0/123.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/vivo/PCTools/BookMark/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/BookMark/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BookMark/a;->parsebookmark(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/BookMark/p;->InsertBookMark(Ljava/util/ArrayList;)V

    return-void
.end method

.method public ParserAndInsert(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-array v2, v1, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "utf-8"

    invoke-direct {v3, v2, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lcom/vivo/PCTools/BookMark/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/BookMark/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/BookMark/a;->parsebookmark(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :try_start_2
    sget-object v3, Lcom/vivo/PCTools/util/a;->k:Ljava/lang/String;

    const-string v4, "MT6573"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/BookMark/p;->Insert73BookMark(Ljava/util/ArrayList;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :cond_0
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/BookMark/p;->InsertBookMark(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const/4 v1, -0x1

    :try_start_5
    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public asynGetAllBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "deleted=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "folder"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "parent"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v8, "version"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v8, "created"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "modified"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "dirty"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v1, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Folder size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "removeFolders size: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Folder size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeDatas size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_4
    return-void

    :cond_4
    :try_start_1
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-nez v10, :cond_7

    new-instance v10, Lcom/vivo/PCTools/BookMark/BookmarkData;

    invoke-direct {v10}, Lcom/vivo/PCTools/BookMark/BookmarkData;-><init>()V

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setId(I)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setTitle(Ljava/lang/String;)V

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setUrl(Ljava/lang/String;)V

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setFolderId(I)V

    :goto_5
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setBookmark(I)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setFavicon([B)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setCreated(J)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setModified(J)V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/vivo/PCTools/BookMark/p;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BookmarkProxy asynGetAllBookmarks exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_5
    :try_start_3
    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setFolderId(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    :cond_7
    :try_start_4
    new-instance v10, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    invoke-direct {v10}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;-><init>()V

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->setId(I)V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->setName(Ljava/lang/String;)V

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->setParentId(I)V

    :goto_6
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->setDate(J)V

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v10, v11}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->setParentId(I)V

    goto :goto_6

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v1

    :goto_7
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    if-nez v1, :cond_a

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v1

    goto :goto_7

    :cond_b
    const/4 v4, 0x1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    move-object v2, v0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    move-object v5, v1

    move v1, v4

    :goto_8
    invoke-virtual {v5}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v4

    if-nez v4, :cond_c

    :goto_9
    invoke-virtual {v2, v1}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->setFolderLevel(I)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v5}, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->getParentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/PCTools/BookMark/BookmarkFolder;

    if-eqz v1, :cond_e

    move-object v5, v1

    move v1, v4

    goto :goto_8

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/PCTools/BookMark/BookmarkData;

    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/vivo/PCTools/BookMark/BookmarkData;->getFolderId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :cond_e
    move v1, v4

    goto :goto_9
.end method

.method public deleteAll()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/BookMark/p;->a:Landroid/net/Uri;

    const-string v2, "_id<>1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
