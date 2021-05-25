.class public Landroid/support/v4/view/a/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/a/v;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/a/v;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IIIIZZ)Landroid/support/v4/view/a/v;
    .locals 8

    new-instance v7, Landroid/support/v4/view/a/v;

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/a/p;->obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/support/v4/view/a/v;-><init>(Ljava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public final getColumnIndex()I
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->getCollectionItemColumnIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getColumnSpan()I
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->getCollectionItemColumnSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getRowIndex()I
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->getCollectionItemRowIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getRowSpan()I
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->getCollectionItemRowSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isHeading()Z
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->isCollectionItemHeading(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSelected()Z
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/v;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->isCollectionItemSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
