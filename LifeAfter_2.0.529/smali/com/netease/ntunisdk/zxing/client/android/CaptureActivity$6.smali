.class final Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$6;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->requestAlbumThenExecute(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 552
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$6;->val$activity:Landroid/app/Activity;

    const/16 p2, 0x7996

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/zxing/utils/Util;->requestMediaPermission(Landroid/app/Activity;I)V

    return-void
.end method
