.class final Lcom/netease/ntunisdk/imageutil/ImageUtil$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/imageutil/ImageUtil;->showImagePopupWindow(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
