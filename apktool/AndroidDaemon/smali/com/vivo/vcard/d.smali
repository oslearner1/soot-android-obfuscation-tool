.class public final Lcom/vivo/vcard/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final n:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Landroid/content/ContentResolver;

.field private final d:Z

.field private e:Z

.field private f:Landroid/database/Cursor;

.field private g:Z

.field private h:I

.field private i:Landroid/net/Uri;

.field private final j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private o:Lcom/vivo/vcard/VCardPhoneNumberTranslationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/vcard/d;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/d;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/d;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/d;->a:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/d;->a:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/d;->a:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/vcard/d;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/vivo/vcard/e;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vivo/vcard/d;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vivo/vcard/d;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vivo/vcard/d;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/vcard/d;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/vivo/vcard/d;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "No error"

    iput-object v1, p0, Lcom/vivo/vcard/d;->l:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/vivo/vcard/d;->m:Z

    iput p3, p0, Lcom/vivo/vcard/d;->b:I

    iput-object p2, p0, Lcom/vivo/vcard/d;->c:Landroid/content/ContentResolver;

    invoke-static {p3}, Lcom/vivo/vcard/e;->isDoCoMo(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/vcard/d;->d:Z

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p4, "UTF-8"

    :cond_0
    invoke-static {p3}, Lcom/vivo/vcard/e;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-boolean v1, p0, Lcom/vivo/vcard/d;->d:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/vivo/vcard/d;->j:Ljava/lang/String;

    :goto_0
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Use the charset \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/vcard/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-object p4, p0, Lcom/vivo/vcard/d;->j:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/vivo/vcard/d;->j:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object p4, p0, Lcom/vivo/vcard/d;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/vivo/vcard/d;->i:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x5

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/vivo/vcard/d;->c:Landroid/content/ContentResolver;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "contact_id=?"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput-object v3, v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/EntityIterator;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    :goto_0
    if-nez v6, :cond_3

    :try_start_2
    const-string v0, "VCardComposer"

    const-string v1, "EntityIterator is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    :cond_0
    const-string v0, ""

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException has been thrown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalAccessException has been thrown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "VCardComposer"

    const-string v2, "InvocationTargetException has been thrown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "InvocationTargetException has been thrown"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/vivo/vcard/d;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-interface {v6}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data does not exist. contactId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/vivo/vcard/d;->c:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v1, v8

    :cond_5
    :goto_5
    invoke-interface {v6}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    :cond_6
    invoke-virtual {p0, v9, v1, v10}, Lcom/vivo/vcard/d;->buildVCard(Ljava/util/Map;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "starred"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_9

    move v1, v7

    :cond_9
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v0, "mimetype"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :cond_c
    move v1, v8

    goto :goto_5
.end method

.method private a()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/vivo/vcard/d;->c()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vivo/vcard/d;->h:I

    iget v1, p0, Lcom/vivo/vcard/d;->h:I

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/vivo/vcard/d;->i:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/vivo/vcard/d;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "VCardComposer"

    const-string v1, "init() is already called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b()Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/vcard/d;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcard/d;->m:Z

    return v1
.end method

.method private c()V
    .locals 4

    iget-boolean v0, p0, Lcom/vivo/vcard/d;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final buildVCard(Ljava/util/Map;ILjava/util/Map;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "The given map is null. Ignore and return empty String"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/vivo/vcard/b;

    iget v0, p0, Lcom/vivo/vcard/d;->b:I

    iget-object v2, p0, Lcom/vivo/vcard/d;->j:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/vivo/vcard/b;-><init>(ILjava/lang/String;)V

    const-string v0, "vnd.android.cursor.item/name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/vivo/vcard/b;->appendNameProperties(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendNickNames(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/vivo/vcard/d;->o:Lcom/vivo/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v2, v0, v3}, Lcom/vivo/vcard/b;->appendPhones(Ljava/util/List;Lcom/vivo/vcard/VCardPhoneNumberTranslationCallback;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendEmails(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendPostals(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendOrganizations(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/website"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendWebsites(Ljava/util/List;)Lcom/vivo/vcard/b;

    iget v0, p0, Lcom/vivo/vcard/d;->b:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/vivo/vcard/b;->appendPhotos(Ljava/util/List;)Lcom/vivo/vcard/b;

    :cond_1
    const-string v0, "vnd.android.cursor.item/note"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/vivo/vcard/b;->appendNotes(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendEvents(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/im"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendIms(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendSipAddresses(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/vivo/vcard/b;->appendRelation(Ljava/util/List;)Lcom/vivo/vcard/b;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0, p3}, Lcom/vivo/vcard/b;->appendGroups(Ljava/util/List;Ljava/util/Map;)Lcom/vivo/vcard/b;

    if-lez p2, :cond_2

    const-string v0, "X-VIVO-STARRED"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/vcard/b;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/vivo/vcard/b;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final createOneEntry()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/vcard/d;->createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/vivo/vcard/d;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/vcard/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcard/d;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    iget v1, p0, Lcom/vivo/vcard/d;->h:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcard/d;->a(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VCardComposer"

    const-string v2, "Cursor#moveToNext() returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method protected final finalize()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/vcard/d;->m:Z

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "finalized() is called before terminate() being called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getErrorReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final init()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/vivo/vcard/d;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final init(Landroid/database/Cursor;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vivo/vcard/d;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/vcard/d;->g:Z

    iput-object p1, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/vivo/vcard/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/vivo/vcard/d;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public final init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    sget-object v2, Lcom/vivo/vcard/d;->n:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/vcard/d;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public final init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7

    sget-object v2, Lcom/vivo/vcard/d;->n:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/vcard/d;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public final init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7

    const/4 v6, 0x0

    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/vivo/vcard/d;->l:Ljava/lang/String;

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p6}, Lcom/vivo/vcard/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/vivo/vcard/d;->g:Z

    iget-object v0, p0, Lcom/vivo/vcard/d;->c:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    if-nez v0, :cond_2

    const-string v0, "VCardComposer"

    const-string v1, "Cursor became null unexpectedly"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/vivo/vcard/d;->l:Ljava/lang/String;

    move v0, v6

    :goto_1
    if-nez v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/vivo/vcard/d;->a()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/vivo/vcard/d;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public final init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/vcard/d;->n:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/vcard/d;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public final initWithRawContactsEntityUri(Landroid/net/Uri;)Z
    .locals 7

    const/4 v3, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/vcard/d;->n:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/vcard/d;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public final isAfterLast()Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/d;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public final setPhoneNumberTranslationCallback(Lcom/vivo/vcard/VCardPhoneNumberTranslationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/d;->o:Lcom/vivo/vcard/VCardPhoneNumberTranslationCallback;

    return-void
.end method

.method public final terminate()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/vcard/d;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcard/d;->m:Z

    return-void
.end method
