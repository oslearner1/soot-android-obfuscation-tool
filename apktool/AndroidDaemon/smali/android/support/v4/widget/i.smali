.class final Landroid/support/v4/widget/i;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Landroid/support/v4/widget/CursorAdapter;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/CursorAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/i;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/CursorAdapter;->a:Z

    iget-object v0, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
