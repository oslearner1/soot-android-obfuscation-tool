.class Lcom/vivo/vcard/ab;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/vivo/vcard/ac;

.field private b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Set;

.field private g:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/vivo/vcard/e;->a:I

    invoke-direct {p0, v0}, Lcom/vivo/vcard/ab;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/ab;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/ab;->g:Ljava/util/Set;

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/vivo/vcard/ab;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/vivo/vcard/ai;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/vivo/vcard/ai;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/vivo/vcard/ai;->getRawValue()Ljava/lang/String;

    move-result-object v3

    const-string v0, "CHARSET"

    invoke-virtual {p1, v0}, Lcom/vivo/vcard/ai;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "UTF-8"

    move-object v2, v0

    :goto_1
    const-string v0, "ADR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "N"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    const-string v1, "ISO-8859-1"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    const-string v5, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Lcom/vivo/vcard/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/vcard/ai;->setRawValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->c()I

    move-result v3

    invoke-static {v0, v3}, Lcom/vivo/vcard/ak;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {p1, v4}, Lcom/vivo/vcard/ai;->setValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7, v1, v2}, Lcom/vivo/vcard/ak;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-direct {p0, v3}, Lcom/vivo/vcard/ab;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->c()I

    move-result v3

    invoke-static {v0, v3}, Lcom/vivo/vcard/ak;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vivo/vcard/ak;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/vivo/vcard/VCardInterpreter;->onPropertyCreated(Lcom/vivo/vcard/ai;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    const-string v5, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "FN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ENCODING"

    invoke-virtual {p1, v0}, Lcom/vivo/vcard/ai;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {v3}, Lcom/vivo/vcard/ak;->appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-direct {p0, v3}, Lcom/vivo/vcard/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-static {v0, v7, v1, v2}, Lcom/vivo/vcard/ak;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/vivo/vcard/ai;->setRawValue(Ljava/lang/String;)V

    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v7

    invoke-virtual {p1, v0}, Lcom/vivo/vcard/ai;->setValues([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/vivo/vcard/VCardInterpreter;->onPropertyCreated(Lcom/vivo/vcard/ai;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    const-string v4, "BASE64"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    const-string v4, "B"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/vivo/vcard/ab;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/vcard/ai;->setByteValue([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/vivo/vcard/VCardInterpreter;->onPropertyCreated(Lcom/vivo/vcard/ai;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v0, "vCard"

    const-string v1, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/vivo/vcard/VCardInterpreter;->onPropertyCreated(Lcom/vivo/vcard/ai;)V

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decode error on base64 photo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    :cond_b
    iget-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    const-string v4, "7BIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    const-string v4, "8BIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    const-string v4, "X-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "vCard"

    const-string v4, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->c()I

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_8
    iget-object v1, p0, Lcom/vivo/vcard/ab;->a:Lcom/vivo/vcard/ac;

    invoke-virtual {v1}, Lcom/vivo/vcard/ac;->peekLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_e

    const-string v4, "END:VCARD"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->a()Ljava/lang/String;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vivo/vcard/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ISO-8859-1"

    invoke-static {v0, v3, v2}, Lcom/vivo/vcard/ak;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Lcom/vivo/vcard/ai;->setValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/vivo/vcard/VCardInterpreter;->onPropertyCreated(Lcom/vivo/vcard/ai;)V

    goto :goto_a

    :cond_f
    move-object v0, v3

    goto :goto_9

    :cond_10
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3d

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v1, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/vivo/vcard/ab;->a:Lcom/vivo/vcard/ac;

    invoke-virtual {v1}, Lcom/vivo/vcard/ac;->peekLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/vivo/vcard/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->a()Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Language: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-lt v0, v2, :cond_3

    const-string v0, "LANGUAGE"

    invoke-virtual {p1, v0, p2}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/vivo/vcard/ab;->a(C)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Language: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/vivo/vcard/ab;->a(C)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Language: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v2, :cond_0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "8BIT"

    iput-object v1, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/vcard/ab;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/vcard/ab;->g()V

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_2
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/vivo/vcard/ab;->h()Z
    :try_end_0
    .catch Lcom/vivo/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v1

    const-string v1, "vCard"

    const-string v2, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/vivo/vcard/ab;->h()Z
    :try_end_1
    .catch Lcom/vivo/vcard/exception/VCardInvalidCommentLineException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "vCard"

    const-string v2, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()Z
    .locals 13

    const/16 v12, 0x3b

    const/16 v11, 0x3a

    const/16 v10, 0x22

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lcom/vivo/vcard/ai;

    invoke-direct {v3}, Lcom/vivo/vcard/ai;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/vivo/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v0}, Lcom/vivo/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v0

    :cond_0
    move v5, v4

    move v0, v4

    move v1, v4

    :goto_0
    if-lt v5, v7, :cond_1

    new-instance v0, Lcom/vivo/vcard/exception/VCardInvalidLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid line: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_0
    if-ne v8, v11, :cond_5

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/vivo/vcard/ai;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, v7, -0x1

    if-ge v5, v0, :cond_4

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Lcom/vivo/vcard/ai;->setRawValue(Ljava/lang/String;)V

    move-object v0, v3

    :goto_3
    invoke-virtual {v0}, Lcom/vivo/vcard/ai;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/vcard/ai;->getRawValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BEGIN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v0, "VCARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/vivo/vcard/ab;->i()V

    :goto_4
    move v2, v4

    :cond_3
    return v2

    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_7

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    const-string v0, "vCard"

    const-string v8, "Empty group found. Ignoring."

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v0, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v0}, Lcom/vivo/vcard/ai;->addGroup(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    if-ne v8, v12, :cond_2

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/vivo/vcard/ai;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, v5, 0x1

    :cond_8
    :goto_6
    move v1, v2

    goto :goto_1

    :pswitch_1
    if-ne v8, v10, :cond_a

    const-string v1, "2.1"

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "vCard"

    const-string v8, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v1, 0x2

    goto :goto_1

    :cond_a
    if-ne v8, v12, :cond_b

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/vivo/vcard/ab;->a(Lcom/vivo/vcard/ai;Ljava/lang/String;)V

    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_1

    :cond_b
    if-ne v8, v11, :cond_2

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/vivo/vcard/ab;->a(Lcom/vivo/vcard/ai;Ljava/lang/String;)V

    add-int/lit8 v0, v7, -0x1

    if-ge v5, v0, :cond_c

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0}, Lcom/vivo/vcard/ai;->setRawValue(Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_3

    :cond_c
    const-string v0, ""

    goto :goto_7

    :pswitch_2
    if-ne v8, v10, :cond_2

    const-string v1, "2.1"

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "vCard"

    const-string v8, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown BEGIN type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v5, "END"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v0, "VCARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown END type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v0}, Lcom/vivo/vcard/ai;->getRawValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AGENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0, v0}, Lcom/vivo/vcard/ab;->a(Lcom/vivo/vcard/ai;)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->e()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "X-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/vivo/vcard/ab;->f:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/vivo/vcard/ab;->f:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Property name unsupported by vCard 2.1: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v3, "VERSION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Lcom/vivo/vcard/exception/VCardVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Incompatible version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-direct {p0, v0}, Lcom/vivo/vcard/ab;->b(Lcom/vivo/vcard/ai;)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/vcard/ab;->g()V

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ab;->a:Lcom/vivo/vcard/ac;

    invoke-virtual {v0}, Lcom/vivo/vcard/ac;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/vivo/vcard/ab;->a:Lcom/vivo/vcard/ac;

    invoke-virtual {v1}, Lcom/vivo/vcard/ac;->peekLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v1, "File ended during parsing BASE64 binary"

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lcom/vivo/vcard/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "vCard"

    const-string v3, "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "vCard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problematic line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->a()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected a(Lcom/vivo/vcard/ai;)V
    .locals 2

    invoke-virtual {p1}, Lcom/vivo/vcard/ai;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Lcom/vivo/vcard/VCardInterpreter;->onPropertyCreated(Lcom/vivo/vcard/ai;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/vivo/vcard/exception/VCardAgentNotSupportedException;

    const-string v1, "AGENT Property is not supported now."

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string v0, "="

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v3, :cond_9

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/vcard/ab;->c(Lcom/vivo/vcard/ai;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/vivo/vcard/af;->c:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivo/vcard/ab;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivo/vcard/ab;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "vCard"

    const-string v2, "The value unsupported by TYPE of %s: "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "VALUE"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "ENCODING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/vivo/vcard/af;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "ENCODING"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcard/ab;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/vivo/vcard/exception/VCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown encoding \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v2, "CHARSET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "CHARSET"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1, v0}, Lcom/vivo/vcard/ab;->d(Lcom/vivo/vcard/ai;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1, v1, v0}, Lcom/vivo/vcard/ab;->a(Lcom/vivo/vcard/ai;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    aget-object v0, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/vivo/vcard/ab;->b(Lcom/vivo/vcard/ai;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected a(Lcom/vivo/vcard/ai;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Z)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v6, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BEGIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" came)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p1, :cond_0

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v1, "Reached where must not be reached."

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInterpreter(Lcom/vivo/vcard/VCardInterpreter;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/vcard/exception/VCardException;

    const-string v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Lcom/vivo/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected b(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/vcard/ab;->c(Lcom/vivo/vcard/ai;Ljava/lang/String;)V

    return-void
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Lcom/vivo/vcard/ai;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/vivo/vcard/af;->b:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/ab;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/ab;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "vCard"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vivo/vcard/ab;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "TYPE"

    invoke-virtual {p1, v0, p2}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "vCard"

    const-string v1, "ParserImpl received cancel operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcard/ab;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1"

    return-object v0
.end method

.method protected e()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/vivo/vcard/af;->a:Ljava/util/Set;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/vivo/vcard/ab;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/vcard/ac;

    invoke-direct {v1, v0}, Lcom/vivo/vcard/ac;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/vivo/vcard/ab;->a:Lcom/vivo/vcard/ac;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/vcard/ab;->d:Z

    if-eqz v0, :cond_3

    const-string v0, "vCard"

    const-string v1, "Cancel request has come. exitting parse operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    :cond_3
    monitor-exit p0

    invoke-direct {p0}, Lcom/vivo/vcard/ab;->f()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_2
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/vivo/vcard/ab;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/vcard/ac;

    invoke-direct {v1, v0}, Lcom/vivo/vcard/ac;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/vivo/vcard/ab;->a:Lcom/vivo/vcard/ac;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/vcard/ab;->f()Z

    iget-object v0, p0, Lcom/vivo/vcard/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardInterpreter;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_1
.end method
