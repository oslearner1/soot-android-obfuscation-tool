.class public final Lcom/vivo/PCTools/i/h;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/vivo/PCTools/i/e;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:I

.field private h:Ljava/io/FileInputStream;

.field private i:Ljava/util/ArrayList;

.field private j:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/vivo/PCTools/i/h;->c:I

    iput v0, p0, Lcom/vivo/PCTools/i/h;->g:I

    iput-object v1, p0, Lcom/vivo/PCTools/i/h;->h:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    iput-object p1, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    iput v0, p0, Lcom/vivo/PCTools/i/h;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/vivo/PCTools/i/e;

    iget-object v1, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/i/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/i/h;->a:Lcom/vivo/PCTools/i/e;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/i/h;)I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/i/h;->g:I

    return v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/i/h;I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/i/h;->g:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/i/h;J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/i/h;->d:J

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/i/h;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contact_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v6

    :goto_1
    return v0

    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "caller_is_syncadapter"

    const-string v9, "true"

    invoke-virtual {v2, v5, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "raw_contact_id="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContactsXmlParseHandler"

    const-string v2, "%s: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ContactsXmlParseHandler"

    const-string v2, "%s: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_1
.end method

.method static synthetic a(Lcom/vivo/PCTools/i/h;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/h;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/vivo/PCTools/i/h;)I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/i/h;->c:I

    return v0
.end method

.method static synthetic b(Lcom/vivo/PCTools/i/h;I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/i/h;->c:I

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/i/h;J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/i/h;->e:J

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/i/h;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/i/h;J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/i/h;->f:J

    return-void
.end method

.method static synthetic d(Lcom/vivo/PCTools/i/h;J)J
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method static synthetic d(Lcom/vivo/PCTools/i/h;)Ljava/io/FileInputStream;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->h:Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/PCTools/i/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/i/h;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/vivo/PCTools/i/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/i/h;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/vivo/PCTools/i/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/i/h;->f:J

    return-wide v0
.end method

.method static synthetic h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/PCTools/i/h;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final UpdateStarreds(Landroid/content/Context;[Ljava/lang/String;I)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    if-eqz v2, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "starred"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length v5, p2

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.android.contacts"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_2
    return v0

    :cond_1
    aget-object v6, p2, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "ContactsXmlParseHandler"

    const-string v5, "Problem persisting user edits"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "ContactsXmlParseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateStarreds "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_3
    const-string v4, "ContactsXmlParseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Version consistency failed, re-parenting: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public final getContactItemVersion(I)J
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data_version"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v2, "ContactsXmlParseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataVersion ===================="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method public final getNameDataID()I
    .locals 8

    const/4 v4, 0x0

    const/4 v6, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "raw_contact_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vivo/PCTools/i/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " And mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public final get_special_url_call(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 6

    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    const-string v0, "content://call_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/PCTools/i/g;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string v0, "ContactsXmlParseHandler"

    const-string v2, "createCallLogXmlFile.cursor is null"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v2, Lcom/vivo/PCTools/i/a;

    invoke-direct {v2}, Lcom/vivo/PCTools/i/a;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/i/a;->set_id(I)V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/i/a;->set_number(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/vivo/PCTools/i/a;->set_date(J)V

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/vivo/PCTools/i/a;->set_duration(J)V

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/i/a;->set_type(I)V

    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/i/a;->set_name(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final parseAndDelete(Ljava/io/InputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/PCTools/i/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/vivo/PCTools/i/z;

    invoke-direct {v2, p0}, Lcom/vivo/PCTools/i/z;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/aa;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/aa;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public final parseAndUpdate(Ljava/io/FileInputStream;Ljava/lang/String;ILjava/io/File;)V
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/vivo/PCTools/i/h;->h:Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    sget-object v4, Lcom/vivo/PCTools/i/b;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Landroid/sax/RootElement;

    const-string v3, ""

    sget-object v4, Lcom/vivo/PCTools/i/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/vivo/PCTools/i/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    sget-object v4, Lcom/vivo/PCTools/i/b;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    sget-object v5, Lcom/vivo/PCTools/i/b;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    sget-object v5, Lcom/vivo/PCTools/i/b;->u:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    sget-object v6, Lcom/vivo/PCTools/i/b;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    sget-object v6, Lcom/vivo/PCTools/i/b;->x:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    sget-object v7, Lcom/vivo/PCTools/i/b;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    sget-object v7, Lcom/vivo/PCTools/i/b;->z:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    sget-object v8, Lcom/vivo/PCTools/i/b;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    sget-object v8, Lcom/vivo/PCTools/i/b;->F:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    sget-object v9, Lcom/vivo/PCTools/i/b;->G:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    sget-object v9, Lcom/vivo/PCTools/i/b;->J:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    sget-object v10, Lcom/vivo/PCTools/i/b;->K:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    sget-object v10, Lcom/vivo/PCTools/i/b;->M:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    sget-object v11, Lcom/vivo/PCTools/i/b;->N:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    sget-object v11, Lcom/vivo/PCTools/i/b;->O:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v11

    sget-object v12, Lcom/vivo/PCTools/i/b;->P:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v11

    sget-object v12, Lcom/vivo/PCTools/i/b;->ap:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    sget-object v13, Lcom/vivo/PCTools/i/b;->an:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    sget-object v13, Lcom/vivo/PCTools/i/b;->U:Ljava/lang/String;

    invoke-virtual {v3, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v13

    new-instance v14, Lcom/vivo/PCTools/i/i;

    invoke-direct {v14, p0}, Lcom/vivo/PCTools/i/i;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v3, v14}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v14, Lcom/vivo/PCTools/i/t;

    invoke-direct {v14, p0}, Lcom/vivo/PCTools/i/t;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v3, v14}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/ad;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/ad;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v4, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/ae;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/ae;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v5, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/af;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/af;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v6, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/ag;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/ag;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v7, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/ah;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/ah;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v8, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/ai;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/ai;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v9, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/aj;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/aj;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v10, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/j;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/j;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v11, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/k;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/k;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v12, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/l;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/l;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v13, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    invoke-virtual {v2}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    sget-object v4, Lcom/vivo/PCTools/i/b;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    return-void
.end method

.method public final parseAndUpdateCallLog(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 4

    const-string v0, "ContactsXmlParseHandler"

    const-string v1, "begin to insert"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->ae:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/PCTools/i/b;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/vivo/PCTools/i/m;

    invoke-direct {v3, p0, v2}, Lcom/vivo/PCTools/i/m;-><init>(Lcom/vivo/PCTools/i/h;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v3, Lcom/vivo/PCTools/i/n;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/n;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v1, v3}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    :try_start_0
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final parseAndUpdateGroupContact(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->T:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/PCTools/i/b;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    sget-object v5, Lcom/vivo/PCTools/i/b;->T:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v3, Lcom/vivo/PCTools/i/ac;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/i/ac;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v1, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    sget-object v3, Lcom/vivo/PCTools/i/b;->T:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->j:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    return-void
.end method

.method public final parseAndUpdateStarredContact(Ljava/io/InputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/i/ab;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/ab;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public final parseAndUpdate_2(Ljava/io/FileInputStream;Ljava/lang/String;I)V
    .locals 11

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/vivo/PCTools/i/h;->h:Ljava/io/FileInputStream;

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/PCTools/i/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/i/b;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/i/b;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/i/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    sget-object v4, Lcom/vivo/PCTools/i/b;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    sget-object v4, Lcom/vivo/PCTools/i/b;->x:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    sget-object v5, Lcom/vivo/PCTools/i/b;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    sget-object v5, Lcom/vivo/PCTools/i/b;->z:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    sget-object v6, Lcom/vivo/PCTools/i/b;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    sget-object v6, Lcom/vivo/PCTools/i/b;->F:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    sget-object v7, Lcom/vivo/PCTools/i/b;->G:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    sget-object v7, Lcom/vivo/PCTools/i/b;->J:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    sget-object v8, Lcom/vivo/PCTools/i/b;->K:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    sget-object v8, Lcom/vivo/PCTools/i/b;->M:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    sget-object v9, Lcom/vivo/PCTools/i/b;->N:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    sget-object v9, Lcom/vivo/PCTools/i/b;->O:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    sget-object v10, Lcom/vivo/PCTools/i/b;->P:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    new-instance v10, Lcom/vivo/PCTools/i/o;

    invoke-direct {v10, p0}, Lcom/vivo/PCTools/i/o;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v1, v10}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v10, Lcom/vivo/PCTools/i/p;

    invoke-direct {v10, p0}, Lcom/vivo/PCTools/i/p;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v1, v10}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/q;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/q;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v2, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/r;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/r;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v3, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/s;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/s;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v4, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/u;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/u;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v5, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/v;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/v;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v6, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/w;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/w;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v7, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/x;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/x;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v8, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    new-instance v1, Lcom/vivo/PCTools/i/y;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/i/y;-><init>(Lcom/vivo/PCTools/i/h;)V

    invoke-virtual {v9, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    invoke-virtual {v0}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public final setContactItemAction(ILandroid/content/ContentValues;I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "ContactsXmlParseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRawContactID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/PCTools/i/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_1

    iget v0, p0, Lcom/vivo/PCTools/i/h;->c:I

    if-eq v0, v3, :cond_0

    const-string v0, "raw_contact_id"

    iget v1, p0, Lcom/vivo/PCTools/i/h;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final setContactItemAction_2(ILandroid/content/ContentValues;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "ContactsXmlParseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRawContactID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/PCTools/i/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_1

    iget v0, p0, Lcom/vivo/PCTools/i/h;->c:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "raw_contact_id"

    iget v1, p0, Lcom/vivo/PCTools/i/h;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vivo/PCTools/i/h;->i:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
