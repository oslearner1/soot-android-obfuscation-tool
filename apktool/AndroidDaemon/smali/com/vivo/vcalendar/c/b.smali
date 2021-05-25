.class public final Lcom/vivo/vcalendar/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^\\s@]+@([^\\s@\\.]+\\.)+[a-zA-z][a-zA-Z][a-zA-Z]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vivo/vcalendar/c/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcalendar/c/b;->c:Z

    iput-object p1, p0, Lcom/vivo/vcalendar/c/b;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
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

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_1

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x40

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1
    array-length v2, v7

    if-lt v0, v2, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    aget-object v2, v7, v0

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/vcalendar/c/b;->c:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/vivo/vcalendar/c/b;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/vivo/vcalendar/c/b;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    aget-object v3, v7, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/vivo/vcalendar/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :cond_3
    iget-object v4, p0, Lcom/vivo/vcalendar/c/b;->b:Ljava/lang/String;

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/util/Rfc822Token;->setAddress(Ljava/lang/String;)V

    :cond_4
    aget-object v2, v7, v0

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    array-length v3, v7

    if-ge v2, v3, :cond_5

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/vcalendar/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/vcalendar/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move v6, v2

    :goto_3
    if-eqz v6, :cond_7

    iget-object v2, p0, Lcom/vivo/vcalendar/c/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_7
    aget-object v3, v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v6, :cond_3

    move-object v9, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_2

    :cond_8
    move v6, v1

    goto :goto_3
.end method

.method public final isValid(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v0, :cond_0

    sget-object v3, Lcom/vivo/vcalendar/c/b;->a:Ljava/util/regex/Pattern;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final setRemoveInvalid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/vcalendar/c/b;->c:Z

    return-void
.end method
