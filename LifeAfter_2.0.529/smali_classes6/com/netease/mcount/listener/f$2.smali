.class Lcom/netease/mcount/listener/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mcount/listener/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mcount/listener/f;


# direct methods
.method constructor <init>(Lcom/netease/mcount/listener/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/listener/f$2;->c:Lcom/netease/mcount/listener/f;

    iput-object p2, p0, Lcom/netease/mcount/listener/f$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mcount/listener/f$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mcount/listener/f$2;->c:Lcom/netease/mcount/listener/f;

    iget-object v1, p0, Lcom/netease/mcount/listener/f$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/listener/f$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/netease/mcount/listener/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
