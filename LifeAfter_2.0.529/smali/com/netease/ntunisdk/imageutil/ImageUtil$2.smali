.class final Lcom/netease/ntunisdk/imageutil/ImageUtil$2;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/imageutil/ImageUtil;->showImagePopupWindow(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;

.field final synthetic val$xOffset:I

.field final synthetic val$yOffset:I


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$anchorView:Landroid/view/View;

    iput p3, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$xOffset:I

    iput p4, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$yOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$anchorView:Landroid/view/View;

    iget v2, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$xOffset:I

    iget v3, p0, Lcom/netease/ntunisdk/imageutil/ImageUtil$2;->val$yOffset:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAsDropDown exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR imageutil"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
