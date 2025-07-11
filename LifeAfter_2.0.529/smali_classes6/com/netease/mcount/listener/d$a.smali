.class public Lcom/netease/mcount/listener/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mcount/listener/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/netease/mcount/listener/d;

.field b:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnFocusChangeListener;Lcom/netease/mcount/listener/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/mcount/listener/d$a;->a:Lcom/netease/mcount/listener/d;

    iput-object p1, p0, Lcom/netease/mcount/listener/d$a;->b:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/listener/d$a;->a:Lcom/netease/mcount/listener/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/netease/mcount/listener/d;->a(Lcom/netease/mcount/listener/d$a;Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mcount/listener/d$a;->b:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
