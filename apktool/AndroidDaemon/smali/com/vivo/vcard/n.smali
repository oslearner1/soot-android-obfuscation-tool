.class public final Lcom/vivo/vcard/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardEntry$EntryElement;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic i(Lcom/vivo/vcard/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic j(Lcom/vivo/vcard/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final constructInsertOperation(Ljava/util/List;I)V
    .locals 4

    const/4 v1, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v0, "raw_contact_id"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-object v0, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data2"

    iget-object v3, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data3"

    iget-object v3, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_1
    iget-object v0, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data5"

    iget-object v3, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_2
    iget-object v0, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "data4"

    iget-object v3, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_3
    iget-object v0, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "data6"

    iget-object v3, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_4
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v0, "data7"

    iget-object v3, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v0, v1

    :cond_5
    iget-object v3, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v0, "data9"

    iget-object v3, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v0, v1

    :cond_6
    iget-object v3, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v0, "data8"

    iget-object v3, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_0
    if-nez v1, :cond_7

    const-string v0, "data7"

    iget-object v1, p0, Lcom/vivo/vcard/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_7
    const-string v0, "data1"

    iget-object v1, p0, Lcom/vivo/vcard/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method public final emptyPhoneticStructuredName()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final emptyStructuredName()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/vivo/vcard/n;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/vivo/vcard/n;

    iget-object v2, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/n;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/n;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/vivo/vcard/VCardEntry$EntryLabel;
    .locals 1

    sget-object v0, Lcom/vivo/vcard/VCardEntry$EntryLabel;->NAME:Lcom/vivo/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public final getFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormatted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getGiven()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getMiddle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    const/4 v1, 0x0

    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/vivo/vcard/n;->g:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    aput-object v2, v4, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    aput-object v2, v4, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/vivo/vcard/n;->k:Ljava/lang/String;

    aput-object v2, v4, v0

    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_0
    if-lt v2, v5, :cond_0

    return v0

    :cond_0
    aget-object v3, v4, v2

    mul-int/lit8 v6, v0, 0x1f

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int v3, v6, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/n;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    return-void
.end method

.method public final setGiven(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    return-void
.end method

.method public final setMiddle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    return-void
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    return-void
.end method

.method public final setSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vivo/vcard/n;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/vcard/n;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vivo/vcard/n;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vivo/vcard/n;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vivo/vcard/n;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
