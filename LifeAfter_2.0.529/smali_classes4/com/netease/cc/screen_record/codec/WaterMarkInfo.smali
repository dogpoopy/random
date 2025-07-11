.class public Lcom/netease/cc/screen_record/codec/WaterMarkInfo;
.super Ljava/lang/Object;
.source "WaterMarkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;
    }
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public lb:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field public offsetLeftTopCornerX:I

.field public offsetLeftTopCornerY:I

.field public waterMarkWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    iput p2, p0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->offsetLeftTopCornerX:I

    .line 21
    iput p3, p0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->offsetLeftTopCornerY:I

    .line 22
    iput p5, p0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->waterMarkWidth:I

    .line 23
    iput-object p4, p0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->lb:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    return-void
.end method
