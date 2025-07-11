.class final Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$1;
.super Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$1;->a:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$b;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
