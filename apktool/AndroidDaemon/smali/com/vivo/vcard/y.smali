.class public final Lcom/vivo/vcard/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/vcard/VCardInterpreter;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lcom/vivo/vcard/VCardEntry;

.field private final c:I

.field private final d:Landroid/accounts/Account;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0, v1, v1}, Lcom/vivo/vcard/y;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/vivo/vcard/y;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/vcard/y;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/y;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/y;->e:Ljava/util/List;

    iput p1, p0, Lcom/vivo/vcard/y;->c:I

    iput-object p2, p0, Lcom/vivo/vcard/y;->d:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final addEntryHandler(Lcom/vivo/vcard/VCardEntryHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    iget-object v0, p0, Lcom/vivo/vcard/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onEntryEnded()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/vivo/vcard/VCardEntry;->consolidateFields()V

    iget-object v0, p0, Lcom/vivo/vcard/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/vivo/vcard/y;->a:Ljava/util/List;

    add-int/lit8 v2, v1, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardEntry;

    iget-object v2, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    invoke-virtual {v0, v2}, Lcom/vivo/vcard/VCardEntry;->addChild(Lcom/vivo/vcard/VCardEntry;)V

    iput-object v0, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    :goto_1
    iget-object v0, p0, Lcom/vivo/vcard/y;->a:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardEntryHandler;

    iget-object v2, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    invoke-interface {v0, v2}, Lcom/vivo/vcard/VCardEntryHandler;->onEntryCreated(Lcom/vivo/vcard/VCardEntry;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    goto :goto_1
.end method

.method public final onEntryStarted()V
    .locals 3

    new-instance v0, Lcom/vivo/vcard/VCardEntry;

    iget v1, p0, Lcom/vivo/vcard/y;->c:I

    iget-object v2, p0, Lcom/vivo/vcard/y;->d:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/vivo/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    iget-object v0, p0, Lcom/vivo/vcard/y;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPropertyCreated(Lcom/vivo/vcard/ai;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/y;->b:Lcom/vivo/vcard/VCardEntry;

    invoke-virtual {v0, p1}, Lcom/vivo/vcard/VCardEntry;->addProperty(Lcom/vivo/vcard/ai;)V

    return-void
.end method

.method public final onVCardEnded()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/vcard/VCardEntry;->clearGroupNameMap()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcard/VCardEntryHandler;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardEntryHandler;->onEnd()V

    goto :goto_0
.end method

.method public final onVCardStarted()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/y;->e:Ljava/util/List;

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

    check-cast v0, Lcom/vivo/vcard/VCardEntryHandler;

    invoke-interface {v0}, Lcom/vivo/vcard/VCardEntryHandler;->onStart()V

    goto :goto_0
.end method
