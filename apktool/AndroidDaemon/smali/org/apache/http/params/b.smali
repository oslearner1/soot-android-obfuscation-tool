.class public Lorg/apache/http/params/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/params/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/accounts/Account;Lcom/vivo/vcard/aj;)Landroid/net/Uri;
    .locals 7

    iget-object v0, p0, Lorg/apache/http/params/b;->a:Landroid/content/Context;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    iget-object v0, p0, Lorg/apache/http/params/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "deleted=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p3}, Lcom/vivo/vcard/aj;->getEstimatedType()I

    move-result v2

    invoke-virtual {p3}, Lcom/vivo/vcard/aj;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    new-instance v3, Lcom/vivo/vcard/y;

    const/4 v1, 0x0

    invoke-direct {v3, v2, v1, v0}, Lcom/vivo/vcard/y;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    new-instance v6, Lcom/vivo/vcard/x;

    iget-object v0, p0, Lorg/apache/http/params/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/vivo/vcard/x;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v6}, Lcom/vivo/vcard/y;->addEntryHandler(Lcom/vivo/vcard/VCardEntryHandler;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/apache/http/params/b;->a(Landroid/net/Uri;ILcom/vivo/vcard/VCardInterpreter;ZLjava/util/List;)Z
    :try_end_0
    .catch Lcom/vivo/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "VcardImportHander"

    const-string v1, "Never reach here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v6}, Lcom/vivo/vcard/x;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;ILcom/vivo/vcard/VCardInterpreter;ZLjava/util/List;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, "VcardImportHander"

    const-string v2, "readOneVCardFile"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/params/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string v0, "VcardImportHander"

    const-string v3, "is"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/vcard/af;

    invoke-direct {v0, p2}, Lcom/vivo/vcard/af;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/vivo/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/vivo/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {v0, v2, p3}, Lcom/vivo/vcard/aa;->parse(Ljava/io/InputStream;Lcom/vivo/vcard/VCardInterpreter;)V
    :try_end_1
    .catch Lcom/vivo/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/vivo/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/vivo/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object v0, p0, Lorg/apache/http/params/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    :try_start_5
    new-instance v0, Lcom/vivo/vcard/ag;

    invoke-direct {v0, p2}, Lcom/vivo/vcard/ag;-><init>(I)V

    invoke-virtual {v0, v2, p3}, Lcom/vivo/vcard/aa;->parse(Ljava/io/InputStream;Lcom/vivo/vcard/VCardInterpreter;)V
    :try_end_5
    .catch Lcom/vivo/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/vivo/vcard/exception/VCardNotSupportedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/vivo/vcard/exception/VCardException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v0, v3}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/vivo/vcard/exception/VCardNotSupportedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/vivo/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_1
    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/vivo/vcard/exception/VCardNotSupportedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/vivo/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_3
    move-exception v0

    const-string v2, "VcardImportHander"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException was emitted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    :catch_4
    move-exception v0

    instance-of v2, v0, Lcom/vivo/vcard/exception/VCardNestedException;

    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    check-cast v0, Lcom/vivo/vcard/exception/VCardNestedException;

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_5
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_0
.end method

.method public static getContentCharset(Lorg/apache/http/params/a;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHttpElementCharset(Lorg/apache/http/params/a;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserAgent(Lorg/apache/http/params/a;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVersion(Lorg/apache/http/params/a;)Lorg/apache/http/ProtocolVersion;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setContentCharset(Lorg/apache/http/params/a;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setHttpElementCharset(Lorg/apache/http/params/a;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUseExpectContinue(Lorg/apache/http/params/a;Z)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUserAgent(Lorg/apache/http/params/a;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setVersion(Lorg/apache/http/params/a;Lorg/apache/http/ProtocolVersion;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static useExpectContinue(Lorg/apache/http/params/a;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public importFromVcardUri(Landroid/net/Uri;)J
    .locals 13

    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v0, "VcardImportHander"

    const-string v1, "importFromVcardUri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/vivo/vcard/z;

    invoke-direct {v3}, Lcom/vivo/vcard/z;-><init>()V

    new-instance v10, Lcom/vivo/vcard/aj;

    invoke-direct {v10}, Lcom/vivo/vcard/aj;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/apache/http/params/b;->a(Landroid/net/Uri;ILcom/vivo/vcard/VCardInterpreter;ZLjava/util/List;)Z

    move-result v0

    const-string v1, "VcardImportHander"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "readOneVCardFile *** result="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/vivo/vcard/z;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VcardImportHander"

    const-string v2, "counter.getCount()=0 "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/vivo/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v0

    move v0, v8

    :goto_0
    if-nez v0, :cond_0

    if-nez v9, :cond_1

    :cond_0
    move-wide v0, v6

    :goto_1
    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v10}, Lcom/vivo/vcard/aj;->getEstimatedType()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/params/b;->a(Landroid/net/Uri;ILcom/vivo/vcard/VCardInterpreter;ZLjava/util/List;)Z

    move-result v0

    const-string v1, "VcardImportHander"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "readOneVCardFile VCardNestedException, result="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/vivo/vcard/z;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "VcardImportHander"

    const-string v2, "count=0*********"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/vivo/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v0

    move v0, v8

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "VcardImportHander"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Must not reach here. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v11, v10}, Lorg/apache/http/params/b;->a(Landroid/net/Uri;Landroid/accounts/Account;Lcom/vivo/vcard/aj;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    move-wide v0, v6

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    move v12, v9

    move v9, v0

    move v0, v12

    goto :goto_0
.end method

.method public insert()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/apache/http/params/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    const-string v4, "MP"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data2"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    const-string v4, "mp870601@163.com"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method
