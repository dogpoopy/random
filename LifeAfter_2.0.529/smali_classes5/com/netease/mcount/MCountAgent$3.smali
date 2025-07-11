.class Lcom/netease/mcount/MCountAgent$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/MCountAgent;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/netease/mcount/MCountAgent;


# direct methods
.method constructor <init>(Lcom/netease/mcount/MCountAgent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent$3;->b:Lcom/netease/mcount/MCountAgent;

    iput-object p2, p0, Lcom/netease/mcount/MCountAgent$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    invoke-static {}, Lcom/netease/mcount/listener/f;->a()Lcom/netease/mcount/listener/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent$3;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v1}, Lcom/netease/mcount/MCountAgent;->a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent$3;->b:Lcom/netease/mcount/MCountAgent;

    invoke-static {v2}, Lcom/netease/mcount/MCountAgent;->b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent$3;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mcount/listener/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
