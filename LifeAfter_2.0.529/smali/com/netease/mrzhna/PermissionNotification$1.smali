.class Lcom/netease/mrzhna/PermissionNotification$1;
.super Ljava/lang/Object;
.source "PermissionNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/PermissionNotification;->showFirstRequestDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/PermissionNotification;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/PermissionNotification;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/netease/mrzhna/PermissionNotification$1;->this$0:Lcom/netease/mrzhna/PermissionNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "[azx]"

    const-string p2, "showFirstRequestDialog PositiveButton Click"

    .line 105
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/netease/mrzhna/PermissionNotification$1;->this$0:Lcom/netease/mrzhna/PermissionNotification;

    const p2, 0x1e240

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/netease/mrzhna/PermissionNotification;->access$000(Lcom/netease/mrzhna/PermissionNotification;IZ)V

    return-void
.end method
