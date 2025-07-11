.class public Lcom/netease/mcount/listener/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mcount/listener/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/netease/mcount/listener/c;

.field b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Lcom/netease/mcount/listener/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/listener/c$a;->b:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/netease/mcount/listener/c$a;->a:Lcom/netease/mcount/listener/c;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/listener/c$a;->a:Lcom/netease/mcount/listener/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/netease/mcount/listener/c;->a(Lcom/netease/mcount/listener/c$a;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mcount/listener/c$a;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
