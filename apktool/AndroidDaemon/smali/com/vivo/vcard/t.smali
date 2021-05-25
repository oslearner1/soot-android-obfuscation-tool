.class public final Lcom/vivo/vcard/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardEntry$EntryElement;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p8, p0, Lcom/vivo/vcard/t;->h:I

    iput-object p1, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/vivo/vcard/t;->j:Z

    iput p11, p0, Lcom/vivo/vcard/t;->k:I

    return-void
.end method

.method public static constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/vivo/vcard/t;
    .locals 12

    const/4 v0, 0x7

    new-array v7, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    const/4 v0, 0x7

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_2
    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/vivo/vcard/t;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    const/4 v6, 0x5

    aget-object v6, v7, v6

    const/4 v8, 0x6

    aget-object v7, v7, v8

    move v8, p1

    move-object v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/vivo/vcard/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v2

    add-int/lit8 v0, v2, 0x1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v7, v0

    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final constructInsertOperation(Ljava/util/List;I)V
    .locals 4

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v0, "raw_contact_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data2"

    iget v2, p0, Lcom/vivo/vcard/t;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget v0, p0, Lcom/vivo/vcard/t;->h:I

    if-nez v0, :cond_0

    const-string v0, "data3"

    iget-object v2, p0, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const-string v2, "data5"

    iget-object v3, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "data4"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data7"

    iget-object v2, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data8"

    iget-object v2, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data9"

    iget-object v2, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data10"

    iget-object v2, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data1"

    iget v2, p0, Lcom/vivo/vcard/t;->k:I

    invoke-virtual {p0, v2}, Lcom/vivo/vcard/t;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-boolean v0, p0, Lcom/vivo/vcard/t;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    instance-of v2, p1, Lcom/vivo/vcard/t;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/vivo/vcard/t;

    iget v2, p0, Lcom/vivo/vcard/t;->h:I

    iget v3, p1, Lcom/vivo/vcard/t;->h:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/vivo/vcard/t;->h:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/vivo/vcard/t;->j:Z

    iget-boolean v3, p1, Lcom/vivo/vcard/t;->j:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/vivo/vcard/VCardEntry$EntryLabel;
    .locals 1

    sget-object v0, Lcom/vivo/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/vivo/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public final getExtendedAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedAddress(I)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x20

    const/4 v7, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {p1}, Lcom/vivo/vcard/e;->isJapaneseDevice(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    if-gez v2, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v5, v4, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v0, :cond_3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_0

    aget-object v5, v4, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v0, :cond_6

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getPobox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/vivo/vcard/t;->h:I

    return v0
.end method

.method public final hashCode()I
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/vivo/vcard/t;->h:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/vivo/vcard/t;->j:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    aput-object v3, v4, v2

    array-length v5, v4

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    aget-object v3, v4, v2

    mul-int/lit8 v6, v0, 0x1f

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int v3, v6, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

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

.method public final isPrimary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/vcard/t;->j:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vivo/vcard/t;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/vcard/t;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/vivo/vcard/t;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vivo/vcard/t;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vivo/vcard/t;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vivo/vcard/t;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/vivo/vcard/t;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/vivo/vcard/t;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/vivo/vcard/t;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/vivo/vcard/t;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
