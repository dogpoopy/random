.class final Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/others/ClickableTextViewUtils$a;->b:Landroid/view/View$OnClickListener;

    return-void
.end method
