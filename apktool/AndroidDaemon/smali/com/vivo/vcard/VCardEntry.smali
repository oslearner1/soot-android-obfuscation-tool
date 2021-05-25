.class public final Lcom/vivo/vcard/VCardEntry;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final v:Ljava/util/List;


# instance fields
.field private final c:Lcom/vivo/vcard/n;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Lcom/vivo/vcard/h;

.field private p:Lcom/vivo/vcard/g;

.field private q:Ljava/util/List;

.field private r:I

.field private final s:I

.field private final t:Landroid/accounts/Account;

.field private u:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/vcard/VCardEntry;->b:Ljava/util/Map;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    const-string v1, "X-CUSTOM-IM"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vivo/vcard/VCardEntry;->v:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0}, Lcom/vivo/vcard/VCardEntry;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/vcard/n;

    invoke-direct {v0}, Lcom/vivo/vcard/n;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/vcard/VCardEntry;->r:I

    iput p1, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    iput-object p2, p0, Lcom/vivo/vcard/VCardEntry;->t:Landroid/accounts/Account;

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    iget v1, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v1}, Lcom/vivo/vcard/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    new-instance v1, Lcom/vivo/vcard/r;

    invoke-direct {v1, v0, p1, p3, p4}, Lcom/vivo/vcard/r;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x70

    if-eq v4, v5, :cond_4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_6

    :cond_4
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 v5, 0x77

    if-eq v4, v5, :cond_7

    const/16 v5, 0x57

    if-ne v4, v5, :cond_8

    :cond_7
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v5, 0x30

    if-gt v5, v4, :cond_9

    const/16 v5, 0x39

    if-le v4, v5, :cond_a

    :cond_9
    if-nez v1, :cond_5

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_5

    :cond_a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private a(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v0, "SORT-AS"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Incorrect multiple SORT_AS parameters detected: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v0, v1}, Lcom/vivo/vcard/ak;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-nez p2, :cond_1

    sget-object p2, Lcom/vivo/vcard/VCardEntry;->v:Ljava/util/List;

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    :goto_2
    if-lt v2, v6, :cond_4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    if-nez v0, :cond_6

    move-object v0, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_4
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v4, v3

    goto :goto_1

    :pswitch_0
    const-string v0, ""

    move-object v1, v0

    move-object v2, v3

    goto :goto_3

    :pswitch_1
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    move-object v2, v3

    goto :goto_3

    :cond_4
    if-le v2, v5, :cond_5

    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/q;

    invoke-static {v0}, Lcom/vivo/vcard/q;->a(Lcom/vivo/vcard/q;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {v0}, Lcom/vivo/vcard/q;->b(Lcom/vivo/vcard/q;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {v0, v1}, Lcom/vivo/vcard/q;->a(Lcom/vivo/vcard/q;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/vivo/vcard/q;->b(Lcom/vivo/vcard/q;Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/vivo/vcard/q;->a(Lcom/vivo/vcard/q;Z)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/q;

    invoke-static {v0}, Lcom/vivo/vcard/q;->c(Lcom/vivo/vcard/q;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v0, p1}, Lcom/vivo/vcard/q;->c(Lcom/vivo/vcard/q;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    :cond_0
    iget-object v7, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    new-instance v0, Lcom/vivo/vcard/q;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/vivo/vcard/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 10

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v0

    move v5, v1

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    :goto_2
    if-gez v0, :cond_4

    const/4 v0, 0x3

    :cond_4
    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->k:Ljava/util/List;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/vcard/VCardEntry;->k:Ljava/util/List;

    :cond_5
    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->k:Ljava/util/List;

    new-instance v3, Lcom/vivo/vcard/u;

    invoke-direct {v3, p1, v0, v4, v1}, Lcom/vivo/vcard/u;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PREF"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    const-string v9, "HOME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v5, v3

    goto :goto_1

    :cond_8
    const-string v9, "WORK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v5, v6

    goto :goto_1

    :cond_9
    if-gez v5, :cond_3

    const-string v4, "X-"

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v4, v0

    move v5, v2

    goto :goto_1

    :cond_b
    move-object v4, v0

    move v0, v1

    move v1, v2

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->a(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-le v0, v2, :cond_7

    move v1, v2

    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v5, v4

    :goto_2
    if-lt v5, v1, :cond_2

    move v0, v4

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    aget-object v2, v0, v4

    invoke-static {v1, v2}, Lcom/vivo/vcard/n;->a(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    aget-object v0, v0, v6

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_4
    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    aget-object v0, v0, v4

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    packed-switch v1, :pswitch_data_0

    :goto_4
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->a(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    :pswitch_1
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardEntry$EntryElement;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/vivo/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/vivo/vcard/VCardEntry$EntryLabel;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardEntry$EntryElement;

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/vivo/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v1}, Lcom/vivo/vcard/n;->d(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->d(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-virtual {v1}, Lcom/vivo/vcard/n;->emptyStructuredName()Z

    move-result v1

    if-nez v1, :cond_3

    iget v0, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v1}, Lcom/vivo/vcard/n;->e(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v2}, Lcom/vivo/vcard/n;->f(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v3}, Lcom/vivo/vcard/n;->g(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v4}, Lcom/vivo/vcard/n;->h(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v5}, Lcom/vivo/vcard/n;->i(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/vivo/vcard/ak;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-virtual {v1}, Lcom/vivo/vcard/n;->emptyPhoneticStructuredName()Z

    move-result v1

    if-nez v1, :cond_4

    iget v0, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v1}, Lcom/vivo/vcard/n;->a(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v2}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v3}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/vcard/ak;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/i;

    invoke-static {v0}, Lcom/vivo/vcard/i;->a(Lcom/vivo/vcard/i;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/r;

    invoke-static {v0}, Lcom/vivo/vcard/r;->a(Lcom/vivo/vcard/r;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/t;

    iget v1, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-virtual {v0, v1}, Lcom/vivo/vcard/t;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/q;

    invoke-virtual {v0}, Lcom/vivo/vcard/q;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Lcom/vivo/vcard/VCardEntry;
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/vivo/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/vivo/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/vivo/vcard/VCardEntry;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static clearGroupNameMap()V
    .locals 1

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public final addChild(Lcom/vivo/vcard/VCardEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->u:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->u:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addProperty(Lcom/vivo/vcard/ai;)V
    .locals 14

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/vivo/vcard/ai;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/vcard/ai;->getParameterMap()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {p1}, Lcom/vivo/vcard/ai;->getValueList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p1}, Lcom/vivo/vcard/ai;->getByteValue()[B

    move-result-object v5

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v0, "VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0, v3}, Lcom/vivo/vcard/n;->i(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    if-lez v0, :cond_3

    const-string v0, ";"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-ne v3, v6, :cond_6

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v0, ""

    goto :goto_2

    :cond_7
    move-object v3, v2

    goto :goto_3

    :cond_8
    const-string v0, "NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->d(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0, v3}, Lcom/vivo/vcard/n;->i(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v0, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v0}, Lcom/vivo/vcard/e;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->a(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    :goto_4
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x5

    if-le v0, v1, :cond_b

    const/4 v0, 0x5

    :cond_b
    packed-switch v0, :pswitch_data_0

    :goto_5
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->h(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "SORT-AS"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v6, :cond_d

    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect multiple SORT_AS parameters detected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v0, v1}, Lcom/vivo/vcard/ak;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_e

    move v0, v8

    :cond_e
    packed-switch v0, :pswitch_data_1

    :goto_6
    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_0
    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/vivo/vcard/n;->a(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    :pswitch_1
    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_2
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->d(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    :pswitch_3
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->e(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    :pswitch_4
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->f(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    :pswitch_5
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcard/n;->g(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string v0, "SORT-STRING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0, v3}, Lcom/vivo/vcard/n;->j(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "NICKNAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "X-NICKNAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->l:Ljava/util/List;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->l:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->l:Ljava/util/List;

    new-instance v1, Lcom/vivo/vcard/o;

    invoke-direct {v1, v3}, Lcom/vivo/vcard/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    const-string v0, "SOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    const-string v1, "X-IRMC-N"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v3, v0}, Lcom/vivo/vcard/ak;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "ADR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v6

    :goto_7
    if-nez v0, :cond_1

    const/4 v1, -0x1

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v2

    move v5, v1

    move v1, v4

    :cond_16
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v5

    :goto_9
    if-gez v0, :cond_59

    :goto_a
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    :cond_17
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    iget v2, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v10, v6, v3, v1, v2}, Lcom/vivo/vcard/t;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/vivo/vcard/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v4

    goto :goto_7

    :cond_19
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, "PREF"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move v1, v6

    goto :goto_8

    :cond_1a
    const-string v11, "HOME"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    move-object v3, v2

    move v5, v6

    goto :goto_8

    :cond_1b
    const-string v11, "WORK"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "COMPANY"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    :cond_1c
    move-object v3, v2

    move v5, v7

    goto :goto_8

    :cond_1d
    const-string v11, "PARCEL"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "DOM"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "INTL"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    if-gez v5, :cond_16

    const-string v3, "X-"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v5, v4

    goto/16 :goto_8

    :cond_1e
    move-object v3, v0

    move v5, v4

    goto/16 :goto_8

    :cond_1f
    const-string v0, "EMAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, -0x1

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_58

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v1

    move v1, v4

    :cond_20
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v5

    :goto_c
    if-gez v0, :cond_21

    move v0, v8

    :cond_21
    iget-object v4, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    if-nez v4, :cond_22

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    :cond_22
    iget-object v4, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    new-instance v5, Lcom/vivo/vcard/i;

    invoke-direct {v5, v3, v0, v2, v1}, Lcom/vivo/vcard/i;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_23
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PREF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    move v1, v6

    goto :goto_b

    :cond_24
    const-string v11, "HOME"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    move v5, v6

    goto :goto_b

    :cond_25
    const-string v11, "WORK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    move v5, v7

    goto :goto_b

    :cond_26
    const-string v11, "CELL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    const/4 v0, 0x4

    move v5, v0

    goto :goto_b

    :cond_27
    if-gez v5, :cond_20

    const-string v2, "X-"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_28
    move-object v2, v0

    move v5, v4

    goto :goto_b

    :cond_29
    const-string v0, "ORG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_2b
    invoke-direct {p0, v6, v10, v9, v4}, Lcom/vivo/vcard/VCardEntry;->a(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_0

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "PREF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v4, v6

    goto :goto_d

    :cond_2d
    const-string v0, "TITLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, v3}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2e
    const-string v0, "ROLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PHOTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "LOGO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_2f
    const-string v0, "VALUE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_30

    const-string v1, "URL"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_30
    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_32
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->i:Ljava/util/List;

    if-nez v0, :cond_33

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->i:Ljava/util/List;

    :cond_33
    new-instance v0, Lcom/vivo/vcard/s;

    invoke-direct {v0, v2, v5, v4}, Lcom/vivo/vcard/s;-><init>(Ljava/lang/String;[BZ)V

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "PREF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v4, v6

    goto :goto_e

    :cond_35
    if-nez v2, :cond_31

    move-object v2, v0

    goto :goto_e

    :cond_36
    const-string v0, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v0}, Lcom/vivo/vcard/e;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "sip:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v6

    move-object v5, v2

    :goto_f
    if-eqz v0, :cond_3a

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v3, v0}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_37
    const-string v0, "tel:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, v4

    goto :goto_f

    :cond_38
    move v0, v4

    move-object v5, v3

    goto :goto_f

    :cond_39
    move v0, v4

    move-object v5, v3

    goto :goto_f

    :cond_3a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v5}, Lcom/vivo/vcard/ak;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3b

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_10
    if-eqz v0, :cond_3c

    const-string v3, "PREF"

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :goto_11
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/vivo/vcard/VCardEntry;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v1, v4

    goto :goto_10

    :cond_3c
    move v6, v4

    goto :goto_11

    :cond_3d
    const-string v0, "X-SKYPE-PSTNNUMBER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3e

    const-string v1, "PREF"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :goto_12
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3, v2, v6}, Lcom/vivo/vcard/VCardEntry;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3e
    move v6, v4

    goto :goto_12

    :cond_3f
    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/vivo/vcard/VCardEntry;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, -0x1

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v5

    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v5, v4

    move v4, v2

    move-object v2, v0

    :goto_14
    if-gez v4, :cond_40

    move v4, v6

    :cond_40
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->h:Ljava/util/List;

    if-nez v0, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->h:Ljava/util/List;

    :cond_41
    iget-object v6, p0, Lcom/vivo/vcard/VCardEntry;->h:Ljava/util/List;

    new-instance v0, Lcom/vivo/vcard/k;

    invoke-direct/range {v0 .. v5}, Lcom/vivo/vcard/k;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_42
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "PREF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    move v4, v6

    :cond_43
    :goto_15
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_44
    if-gez v2, :cond_43

    const-string v2, "HOME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    move v2, v6

    goto :goto_15

    :cond_45
    const-string v2, "WORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    move v2, v7

    goto :goto_15

    :cond_46
    move v2, v8

    goto :goto_15

    :cond_47
    const-string v0, "NOTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->m:Ljava/util/List;

    if-nez v0, :cond_48

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->m:Ljava/util/List;

    :cond_48
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->m:Ljava/util/List;

    new-instance v1, Lcom/vivo/vcard/p;

    invoke-direct {v1, v3}, Lcom/vivo/vcard/p;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_49
    const-string v0, "URL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->j:Ljava/util/List;

    if-nez v0, :cond_4a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->j:Ljava/util/List;

    :cond_4a
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->j:Ljava/util/List;

    new-instance v1, Lcom/vivo/vcard/w;

    invoke-direct {v1, v3}, Lcom/vivo/vcard/w;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4b
    const-string v0, "BDAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Lcom/vivo/vcard/h;

    invoke-direct {v0, v3}, Lcom/vivo/vcard/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->o:Lcom/vivo/vcard/h;

    goto/16 :goto_0

    :cond_4c
    const-string v0, "ANNIVERSARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Lcom/vivo/vcard/g;

    invoke-direct {v0, v3}, Lcom/vivo/vcard/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->p:Lcom/vivo/vcard/g;

    goto/16 :goto_0

    :cond_4d
    const-string v0, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0, v3}, Lcom/vivo/vcard/n;->b(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4e
    const-string v0, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0, v3}, Lcom/vivo/vcard/n;->a(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4f
    const-string v0, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-static {v0, v3}, Lcom/vivo/vcard/n;->c(Lcom/vivo/vcard/n;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_50
    const-string v0, "IMPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "sip:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v3, v0}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_51
    const-string v0, "X-SIP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TYPE"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v3, v0}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_52
    const-string v0, "X-ANDROID-CUSTOM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget v0, p0, Lcom/vivo/vcard/VCardEntry;->s:I

    invoke-static {v3, v0}, Lcom/vivo/vcard/ak;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->n:Ljava/util/List;

    if-nez v1, :cond_53

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vivo/vcard/VCardEntry;->n:Ljava/util/List;

    :cond_53
    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->n:Ljava/util/List;

    invoke-static {v0}, Lcom/vivo/vcard/f;->constructAndroidCustomData(Ljava/util/List;)Lcom/vivo/vcard/f;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_54
    const-string v0, "X-VIVO-GROUPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->q:Ljava/util/List;

    if-nez v0, :cond_55

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/VCardEntry;->q:Ljava/util/List;

    :cond_55
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->q:Ljava/util/List;

    new-instance v1, Lcom/vivo/vcard/j;

    invoke-direct {v1, p0, v3}, Lcom/vivo/vcard/j;-><init>(Lcom/vivo/vcard/VCardEntry;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_56
    const-string v0, "X-VIVO-STARRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/vcard/VCardEntry;->r:I

    goto/16 :goto_0

    :cond_57
    move v13, v5

    move v5, v4

    move v4, v13

    goto/16 :goto_14

    :cond_58
    move v0, v1

    move v1, v4

    goto/16 :goto_c

    :cond_59
    move v6, v0

    goto/16 :goto_a

    :cond_5a
    move-object v3, v2

    move v0, v1

    move v1, v4

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final consolidateFields()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-direct {p0}, Lcom/vivo/vcard/VCardEntry;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vivo/vcard/n;->a:Ljava/lang/String;

    return-void
.end method

.method public final constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/vcard/VCardEntry;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcard/VCardEntry;->t:Landroid/accounts/Account;

    if-eqz v1, :cond_3

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->t:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "account_type"

    iget-object v2, p0, Lcom/vivo/vcard/VCardEntry;->t:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_1
    const-string v1, "starred"

    iget v2, p0, Lcom/vivo/vcard/VCardEntry;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "title"

    aput-object v0, v2, v8

    const-string v3, "deleted = ?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v0, "0"

    aput-object v0, v4, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    new-instance v0, Lcom/vivo/vcard/l;

    invoke-direct {v0, p0, p2, v6}, Lcom/vivo/vcard/l;-><init>(Lcom/vivo/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/vivo/vcard/VCardEntry;->iterateAllData(Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    goto :goto_0

    :cond_3
    const-string v1, "account_name"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "account_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/vivo/vcard/VCardEntry;->b:Ljava/util/Map;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->o:Lcom/vivo/vcard/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->o:Lcom/vivo/vcard/h;

    invoke-static {v0}, Lcom/vivo/vcard/h;->a(Lcom/vivo/vcard/h;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChildlen()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->u:Ljava/util/List;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    iget-object v0, v0, Lcom/vivo/vcard/n;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-direct {p0}, Lcom/vivo/vcard/VCardEntry;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vivo/vcard/n;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    iget-object v0, v0, Lcom/vivo/vcard/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->h:Ljava/util/List;

    return-object v0
.end method

.method public final getNameData()Lcom/vivo/vcard/n;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->l:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->m:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->i:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->j:Ljava/util/List;

    return-object v0
.end method

.method public final isIgnorable()Z
    .locals 2

    new-instance v0, Lcom/vivo/vcard/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/vcard/m;-><init>(Lcom/vivo/vcard/VCardEntry;B)V

    invoke-virtual {p0, v0}, Lcom/vivo/vcard/VCardEntry;->iterateAllData(Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    invoke-virtual {v0}, Lcom/vivo/vcard/m;->getResult()Z

    move-result v0

    return v0
.end method

.method public final iterateAllData(Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1

    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-virtual {v0}, Lcom/vivo/vcard/n;->getEntryLabel()Lcom/vivo/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/vivo/vcard/VCardEntry$EntryLabel;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->c:Lcom/vivo/vcard/n;

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/vivo/vcard/VCardEntry$EntryElement;)Z

    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->e:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->f:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->g:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->i:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->j:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->k:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->l:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->m:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->n:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->q:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vivo/vcard/VCardEntry;->a(Ljava/util/List;Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->o:Lcom/vivo/vcard/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->o:Lcom/vivo/vcard/h;

    invoke-virtual {v0}, Lcom/vivo/vcard/h;->getEntryLabel()Lcom/vivo/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/vivo/vcard/VCardEntry$EntryLabel;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->o:Lcom/vivo/vcard/h;

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/vivo/vcard/VCardEntry$EntryElement;)Z

    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->p:Lcom/vivo/vcard/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->p:Lcom/vivo/vcard/g;

    invoke-virtual {v0}, Lcom/vivo/vcard/g;->getEntryLabel()Lcom/vivo/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/vivo/vcard/VCardEntry$EntryLabel;)V

    iget-object v0, p0, Lcom/vivo/vcard/VCardEntry;->p:Lcom/vivo/vcard/g;

    invoke-interface {p1, v0}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/vivo/vcard/VCardEntry$EntryElement;)Z

    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    :cond_1
    invoke-interface {p1}, Lcom/vivo/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/vivo/vcard/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/vcard/v;-><init>(Lcom/vivo/vcard/VCardEntry;B)V

    invoke-virtual {p0, v0}, Lcom/vivo/vcard/VCardEntry;->iterateAllData(Lcom/vivo/vcard/VCardEntry$EntryElementIterator;)V

    invoke-virtual {v0}, Lcom/vivo/vcard/v;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
