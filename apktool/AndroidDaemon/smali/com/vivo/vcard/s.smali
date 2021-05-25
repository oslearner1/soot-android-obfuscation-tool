.class public final Lcom/vivo/vcard/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardEntry$EntryElement;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:[B

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcard/s;->d:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/vivo/vcard/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcard/s;->c:[B

    iput-boolean p3, p0, Lcom/vivo/vcard/s;->b:Z

    return-void
.end method


# virtual methods
.method public final constructInsertOperation(Ljava/util/List;I)V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "data15"

    iget-object v2, p0, Lcom/vivo/vcard/s;->c:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-boolean v1, p0, Lcom/vivo/vcard/s;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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
    instance-of v2, p1, Lcom/vivo/vcard/s;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/vivo/vcard/s;

    iget-object v2, p0, Lcom/vivo/vcard/s;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/vcard/s;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/vcard/s;->c:[B

    iget-object v3, p1, Lcom/vivo/vcard/s;->c:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/vivo/vcard/s;->b:Z

    iget-boolean v3, p1, Lcom/vivo/vcard/s;->b:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/s;->c:[B

    return-object v0
.end method

.method public final getEntryLabel()Lcom/vivo/vcard/VCardEntry$EntryLabel;
    .locals 1

    sget-object v0, Lcom/vivo/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/vivo/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/vcard/s;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/s;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcard/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vivo/vcard/s;->c:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/vcard/s;->c:[B

    array-length v3, v2

    :goto_2
    if-lt v1, v3, :cond_3

    :cond_1
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/vivo/vcard/s;->b:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x4cf

    :goto_3
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/vcard/s;->d:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    aget-byte v4, v2, v1

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v0, 0x4d5

    goto :goto_3
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/s;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/s;->c:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isPrimary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/vcard/s;->b:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vivo/vcard/s;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vivo/vcard/s;->c:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/vivo/vcard/s;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
