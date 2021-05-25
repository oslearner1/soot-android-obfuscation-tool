.class public final Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/util/HashMap;

.field private static f:[Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

.field private static synthetic j:[I

.field private static synthetic k:[I


# instance fields
.field private g:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

.field private h:Landroid/content/Context;

.field private i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "apk"

    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "itz"

    aput-object v1, v0, v3

    const-string v1, "iuz"

    aput-object v1, v0, v4

    const-string v1, "txj"

    aput-object v1, v0, v5

    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->b:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ar"

    aput-object v1, v0, v3

    const-string v1, "cpio"

    aput-object v1, v0, v4

    const-string v1, "jar"

    aput-object v1, v0, v5

    const-string v1, "tar"

    aput-object v1, v0, v6

    const-string v1, "zip"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tar.gz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tgz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tar.bz2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "tbz2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bz2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rar"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->All:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Music:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Video:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Picture:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Theme:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Apk:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Zip:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Doc:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Other:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Favorite:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    const v2, 0x7f0b0039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Music:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Video:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Picture:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Theme:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Apk:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Zip:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Doc:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Other:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->f:[Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->i:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->h:Landroid/content/Context;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->All:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->g:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    return-void
.end method

.method private a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/j;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "(mime_type==\'"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\') OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->c:[Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "_data LIKE \'%.apk\'"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND (_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT LIKE \'%/.%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v4, p0, v0

    const-string v5, "(_data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " LIKE \'%."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\') OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;JJ)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PhoneInfo/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/PCTools/PhoneInfo/c;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PhoneInfo/c;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;)V

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v6

    const-string v0, "SUM(_size)"

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v0, "FileCategoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to query uri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;JJ)V

    const-string v0, "FileCategoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrieved "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info >>> count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->j:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->values()[Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->All:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Apk:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Custom:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Doc:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Favorite:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Music:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Other:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Picture:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Theme:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Video:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Zip:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->values()[Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->date:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->name:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->size:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->type:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;

    invoke-virtual {v1}, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static getCategoryFromPath(Ljava/lang/String;)Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;
    .locals 2

    invoke-static {p0}, Lcom/vivo/PCTools/d/a;->getFileType(Ljava/lang/String;)Lcom/vivo/PCTools/d/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/vivo/PCTools/d/b;->a:I

    invoke-static {v1}, Lcom/vivo/PCTools/d/a;->isAudioFileType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Music:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    :goto_0
    return-object v0

    :cond_0
    iget v1, v0, Lcom/vivo/PCTools/d/b;->a:I

    invoke-static {v1}, Lcom/vivo/PCTools/d/a;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Video:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/vivo/PCTools/d/b;->a:I

    invoke-static {v1}, Lcom/vivo/PCTools/d/a;->isImageFileType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Picture:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vivo/PCTools/PcFtpRemote/j;->a:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/vivo/PCTools/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Doc:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0

    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Other:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Apk:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Theme:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Zip:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Other:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    goto :goto_0
.end method


# virtual methods
.method public final getCategoryInfo(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;)Lcom/vivo/PCTools/PhoneInfo/c;
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/PhoneInfo/c;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vivo/PCTools/PhoneInfo/c;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PhoneInfo/c;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;)V

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getCategoryInfos()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getCurCategory()Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->g:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public final getCurCategoryNameResId()I
    .locals 2

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->g:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getFilter()Ljava/io/FilenameFilter;
    .locals 2

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->g:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public final query(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    const-string v0, "external"

    invoke-static {}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v4

    :goto_0
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->b()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper$SortMethod;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    move-object v5, v4

    :goto_1
    if-nez v1, :cond_0

    const-string v0, "FileCategoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid uri, category:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v4

    :pswitch_0
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const-string v5, "title asc"

    goto :goto_1

    :pswitch_5
    const-string v5, "_size asc"

    goto :goto_1

    :pswitch_6
    const-string v5, "date_modified desc"

    goto :goto_1

    :pswitch_7
    const-string v5, "mime_type asc, title asc"

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v0

    const/4 v0, 0x1

    const-string v6, "_data"

    aput-object v6, v2, v0

    const/4 v0, 0x2

    const-string v6, "_size"

    aput-object v6, v2, v0

    const/4 v0, 0x3

    const-string v6, "date_modified"

    aput-object v6, v2, v0

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final refreshCategoryInfo()V
    .locals 9

    const-wide/16 v2, 0x0

    sget-object v7, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->f:[Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, v8, :cond_1

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Music:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v2, v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Video:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v2, v1}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Picture:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v1, v0}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Theme:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v1, v0}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Apk:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v1, v0}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Zip:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v1, v0}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Doc:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v1, v0}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    :cond_0
    return-void

    :cond_1
    aget-object v1, v7, v6

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;JJ)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public final setCurCategory(Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->g:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public final setCustomCategory([Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Custom:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->g:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->d:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Custom:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->d:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Custom:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper;->d:Ljava/util/HashMap;

    sget-object v1, Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;->Custom:Lcom/vivo/PCTools/PhoneInfo/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/vivo/PCTools/PhoneInfo/j;

    invoke-direct {v2, p1}, Lcom/vivo/PCTools/PhoneInfo/j;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
