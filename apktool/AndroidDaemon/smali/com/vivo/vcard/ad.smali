.class Lcom/vivo/vcard/ad;
.super Lcom/vivo/vcard/ab;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/vcard/ab;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcard/ad;->c:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vivo/vcard/ab;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcard/ad;->c:Z

    return-void
.end method

.method private b(Lcom/vivo/vcard/ai;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v1

    move v2, v1

    move-object v0, v3

    :goto_0
    if-lt v4, v5, :cond_2

    if-eqz v2, :cond_0

    const-string v1, "vCard"

    const-string v2, "Dangling Dquote."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a

    const-string v0, "vCard"

    const-string v1, "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_6

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcard/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v2, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v9, v0

    move-object v0, v2

    move v2, v9

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "vCard"

    const-string v6, "Unexpected Dquote inside property."

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    const/4 v2, 0x1

    move v9, v2

    move-object v2, v0

    move v0, v9

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/vcard/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/16 v7, 0x2c

    if-ne v6, v7, :cond_8

    if-nez v2, :cond_8

    if-nez v0, :cond_7

    const-string v6, "vCard"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Comma is used before actual string comes. ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v2

    move-object v2, v0

    move v0, v9

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcard/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    move-object v2, v3

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v2

    move-object v2, v0

    move v0, v9

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcard/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ISO-8859-1"

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lcom/vivo/vcard/ak;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    :cond_0
    const-string v0, "\n"

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_2

    :cond_1
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/ad;->a:Lcom/vivo/vcard/ac;

    invoke-virtual {v0}, Lcom/vivo/vcard/ac;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/vivo/vcard/ad;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v1, "File ended during parsing BASE64 binary"

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final a(Lcom/vivo/vcard/ai;)V
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/vcard/ad;->c:Z

    if-nez v0, :cond_0

    const-string v0, "vCard"

    const-string v1, "AGENT in vCard 3.0 is not supported yet. Ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcard/ad;->c:Z

    :cond_0
    return-void
.end method

.method protected final a(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/vivo/vcard/ab;->a(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/vivo/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "="

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/vivo/vcard/ad;->b(Lcom/vivo/vcard/ai;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown params value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Lcom/vivo/vcard/ai;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/vcard/ad;->b(Lcom/vivo/vcard/ai;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/vivo/vcard/ab;->a(Z)Z

    move-result v0

    return v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vivo/vcard/ad;->a:Lcom/vivo/vcard/ac;

    invoke-virtual {v2}, Lcom/vivo/vcard/ac;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v1, "Space exists at the beginning of the line"

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v3, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    if-nez v3, :cond_a

    iput-object v2, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/vivo/vcard/ad;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/vivo/vcard/ad;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/vcard/ad;->c(Lcom/vivo/vcard/ai;Ljava/lang/String;)V

    return-void
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final c(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    .locals 1

    const-string v0, "TYPE"

    invoke-direct {p0, p1, v0, p2}, Lcom/vivo/vcard/ad;->b(Lcom/vivo/vcard/ai;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method protected e()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/vivo/vcard/ag;->a:Ljava/util/Set;

    return-object v0
.end method
