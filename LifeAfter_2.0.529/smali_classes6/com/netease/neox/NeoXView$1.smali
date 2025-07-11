.class Lcom/netease/neox/NeoXView$1;
.super Ljava/lang/Object;
.source "NeoXView.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/NeoXView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/NeoXView;


# direct methods
.method constructor <init>(Lcom/netease/neox/NeoXView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netease/neox/NeoXView$1;->this$0:Lcom/netease/neox/NeoXView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/netease/neox/NeoXView$1;->this$0:Lcom/netease/neox/NeoXView;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    return-void
.end method
