.class Lcom/netease/push/utils/StrUtil$1;
.super Ljava/lang/Object;
.source "StrUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/push/utils/StrUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$clickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/netease/push/utils/StrUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/push/utils/StrUtil$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/push/utils/StrUtil$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/push/utils/StrUtil$1;->val$clickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/push/utils/StrUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    iget-object v1, p0, Lcom/netease/push/utils/StrUtil$1;->val$title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/netease/push/utils/StrUtil$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/netease/push/utils/StrUtil$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v1, p0, Lcom/netease/push/utils/StrUtil$1;->val$clickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 257
    iget-object v1, p0, Lcom/netease/push/utils/StrUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "id"

    const-string v4, "alertTitle"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v4, 0x11

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/netease/push/utils/StrUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "message"

    invoke-virtual {v1, v5, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    return-void
.end method
