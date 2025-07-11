.class Lcom/netease/mrzhna/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# static fields
.field static final PICK_IMAGE_ACTIVITY_FAIL:I = 0x2

.field static final PICK_IMAGE_CANCEL:I = 0x1

.field static final PICK_IMAGE_CROP_FAIL:I = 0x4

.field static final PICK_IMAGE_CROP_MODE_AUTO_CROP:I = 0x1

.field static final PICK_IMAGE_CROP_MODE_MANUAL_CROP:I = 0x2

.field static final PICK_IMAGE_CROP_MODE_NOT_CROP:I = 0x0

.field static final PICK_IMAGE_FAIL:I = 0x7

.field static final PICK_IMAGE_OK:I = 0x0

.field static final PICK_IMAGE_PICK_FAIL:I = 0x3

.field static final PICK_IMAGE_PICK_MODE_CAMERA:I = 0x0

.field static final PICK_IMAGE_PICK_MODE_CAMERA_AND_PHOTO_ALBUM:I = 0x2

.field static final PICK_IMAGE_PICK_MODE_PHOTO_ALBUM:I = 0x1

.field static final PICK_IMAGE_PROCESS_FAIL:I = 0x5

.field static final PICK_IMAGE_SAVE_FAIL:I = 0x6

.field static final PICK_IMAGE_SAVE_MODE_CROP_CENTER:I = 0x2

.field static final PICK_IMAGE_SAVE_MODE_CROP_TO_FIT:I = 0x1

.field static final PICK_IMAGE_SAVE_MODE_NOT_SAVE:I = 0x0

.field static final PICK_IMAGE_SAVE_MODE_SCALE_TO_FIT:I = 0x3

.field static final PICK_IMAGE_SAVE_MODE_SHRINK_TO_FIT:I = 0x4

.field static final PICK_IMAGE_SAVE_MODE_STRETCH:I = 0x5


# instance fields
.field private REQUEST_CAPTURE:I

.field private m_activity:Landroid/app/Activity;

.field private m_capture_file:Ljava/io/File;

.field private m_crop_aspect_height:I

.field private m_crop_aspect_width:I

.field private m_crop_file:Ljava/io/File;

.field private m_crop_mode:I

.field private m_cropped_img_file:Ljava/io/File;

.field private m_cropped_img_height:I

.field private m_cropped_img_max_height:I

.field private m_cropped_img_max_width:I

.field private m_cropped_img_name:Ljava/lang/String;

.field private m_cropped_img_save_mode:I

.field private m_cropped_img_width:I

.field private m_ori_img_height:I

.field private m_ori_img_width:I

.field private m_pick_root:Ljava/lang/String;

.field private m_picked_img_file:Ljava/io/File;

.field private m_picked_img_height:I

.field private m_picked_img_max_height:I

.field private m_picked_img_max_width:I

.field private m_picked_img_name:Ljava/lang/String;

.field private m_picked_img_save_mode:I

.field private m_picked_img_width:I

.field private m_support_camera:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/ImagePicker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netease/mrzhna/ImagePicker;->startCameraActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/ImagePicker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netease/mrzhna/ImagePicker;->startPhotoAlbumActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/mrzhna/ImagePicker;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void
.end method

.method private createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    if-eqz p1, :cond_0

    .line 550
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/netease/mrzhna/ImagePicker;->m_pick_root:Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 552
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 553
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_pick_root:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private fail(I)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v0, p1

    .line 595
    invoke-static/range {v0 .. v8}, Lcom/netease/neox/NativeInterface;->NativeOnPickExResult(IIILjava/lang/String;IILjava/lang/String;II)V

    return-void
.end method

.method private processBitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 602
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 603
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v0, :cond_6

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    if-gtz p3, :cond_1

    return-object p1

    :cond_1
    const/4 v2, 0x0

    if-gtz p2, :cond_3

    if-lez p3, :cond_3

    if-lt p3, v1, :cond_2

    return-object p1

    :cond_2
    sub-int/2addr v1, p3

    .line 615
    div-int/lit8 v1, v1, 0x2

    .line 616
    invoke-static {p1, v2, v1, v0, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    if-lez p2, :cond_5

    if-gtz p3, :cond_5

    if-lt p2, v0, :cond_4

    return-object p1

    :cond_4
    sub-int/2addr v0, p2

    .line 622
    div-int/lit8 v0, v0, 0x2

    .line 623
    invoke-static {p1, v0, v2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_5
    sub-int v3, v0, p2

    .line 627
    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 628
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v0, v1, p3

    .line 629
    div-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 630
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 631
    invoke-static {p1, v3, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private processBitmapCropToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 637
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 638
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v0, :cond_5

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    if-gtz p2, :cond_1

    if-gtz p3, :cond_1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    if-gtz p2, :cond_2

    if-lez p3, :cond_2

    mul-int v0, v0, p3

    .line 648
    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 650
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    if-lez p2, :cond_3

    if-gtz p3, :cond_3

    mul-int v1, v1, p2

    .line 653
    div-int/2addr v1, v0

    .line 654
    invoke-static {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    mul-int v3, p3, v0

    .line 657
    div-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v3, v1, :cond_4

    mul-int v4, v0, v1

    .line 661
    div-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v3

    move v3, v0

    :goto_0
    sub-int/2addr v0, v3

    .line 666
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v4

    .line 667
    div-int/lit8 v1, v1, 0x2

    .line 668
    invoke-static {p1, v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 671
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private processBitmapScaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 677
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 678
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_3

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-lez p2, :cond_1

    mul-int v1, v1, p2

    .line 685
    div-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-lez p3, :cond_2

    if-le v1, p3, :cond_2

    mul-int p2, p2, p3

    .line 690
    div-int/2addr p2, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 695
    invoke-static {p1, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    return-object v2
.end method

.method private processBitmapShrinkToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 703
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_3

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-lez p2, :cond_1

    if-le v0, p2, :cond_1

    mul-int v1, v1, p2

    .line 711
    div-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-lez p3, :cond_2

    if-le v1, p3, :cond_2

    mul-int p2, p2, p3

    .line 716
    div-int/2addr p2, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 721
    invoke-static {p1, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    return-object v2
.end method

.method private processBitmapStretch(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 730
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v0, :cond_4

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    if-gtz p3, :cond_1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    if-gtz p2, :cond_2

    if-lez p3, :cond_2

    .line 740
    invoke-static {p1, v0, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    if-lez p2, :cond_3

    if-gtz p3, :cond_3

    .line 744
    invoke-static {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 748
    :cond_3
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private processCroppedImage(Landroid/net/Uri;)V
    .locals 10

    .line 437
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 440
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 445
    :cond_0
    iget v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_save_mode:I

    iget v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_max_width:I

    iget v2, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_max_height:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/netease/mrzhna/ImagePicker;->processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x5

    if-nez p1, :cond_1

    .line 448
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_width:I

    .line 454
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_height:I

    .line 455
    iget v2, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_width:I

    if-lez v2, :cond_6

    if-gtz v1, :cond_2

    goto :goto_1

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_name:Ljava/lang/String;

    const-string v1, "_cropped"

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/mrzhna/ImagePicker;->createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    .line 464
    invoke-direct {p0, p1, v0}, Lcom/netease/mrzhna/ImagePicker;->saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x6

    .line 465
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 471
    :cond_3
    iget-object p1, p0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_file:Ljava/io/File;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 472
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :cond_4
    move-object v4, v0

    .line 475
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 476
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v7, v0

    const/4 v1, 0x0

    .line 478
    iget v2, p0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_width:I

    iget v3, p0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_height:I

    iget v5, p0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_width:I

    iget v6, p0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_height:I

    iget v8, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_width:I

    iget v9, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_height:I

    invoke-static/range {v1 .. v9}, Lcom/netease/neox/NativeInterface;->NativeOnPickExResult(IIILjava/lang/String;IILjava/lang/String;II)V

    return-void

    .line 456
    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void
.end method

.method private processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown save mode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PickImage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/mrzhna/ImagePicker;->processBitmapStretch(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/mrzhna/ImagePicker;->processBitmapShrinkToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/mrzhna/ImagePicker;->processBitmapScaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_3
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/mrzhna/ImagePicker;->processBitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_4
    invoke-direct {p0, p1, p3, p4}, Lcom/netease/mrzhna/ImagePicker;->processBitmapCropToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method private processPickedImage(Landroid/net/Uri;)V
    .locals 16

    move-object/from16 v0, p0

    .line 301
    invoke-virtual/range {p0 .. p1}, Lcom/netease/mrzhna/ImagePicker;->getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 304
    invoke-direct {v0, v2}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 309
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_width:I

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_height:I

    .line 311
    iget v4, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_width:I

    if-lez v4, :cond_15

    if-gtz v3, :cond_1

    goto/16 :goto_6

    .line 316
    :cond_1
    iget v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_save_mode:I

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 317
    iput-object v6, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_file:Ljava/io/File;

    const/4 v1, 0x0

    .line 318
    iput v1, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_width:I

    .line 319
    iput v1, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_height:I

    goto :goto_0

    .line 322
    :cond_2
    iget v7, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_max_width:I

    iget v8, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_max_height:I

    invoke-direct {v0, v1, v3, v7, v8}, Lcom/netease/mrzhna/ImagePicker;->processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 327
    invoke-direct {v0, v5}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 331
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_width:I

    .line 332
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_height:I

    .line 333
    iget v7, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_width:I

    if-lez v7, :cond_14

    if-gtz v3, :cond_4

    goto/16 :goto_5

    .line 339
    :cond_4
    iget-object v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_name:Ljava/lang/String;

    const-string v7, "_picked"

    invoke-direct {v0, v3, v1, v7}, Lcom/netease/mrzhna/ImagePicker;->createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_file:Ljava/io/File;

    .line 342
    invoke-direct {v0, v1, v3}, Lcom/netease/mrzhna/ImagePicker;->saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 343
    invoke-direct {v0, v4}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 349
    :cond_5
    :goto_0
    iget v1, v0, Lcom/netease/mrzhna/ImagePicker;->m_crop_mode:I

    if-eqz v1, :cond_12

    iget v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_save_mode:I

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    .line 362
    invoke-virtual/range {p0 .. p1}, Lcom/netease/mrzhna/ImagePicker;->getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_7

    .line 365
    invoke-direct {v0, v2}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 370
    :cond_7
    iget v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_crop_aspect_width:I

    const/4 v3, 0x4

    if-lez v2, :cond_9

    iget v7, v0, Lcom/netease/mrzhna/ImagePicker;->m_crop_aspect_height:I

    if-lez v7, :cond_9

    .line 371
    iget v8, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_width:I

    mul-int v9, v8, v7

    .line 372
    div-int/2addr v9, v2

    .line 373
    iget v10, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_height:I

    if-le v9, v10, :cond_8

    mul-int v2, v2, v10

    .line 375
    div-int v8, v2, v7

    move v9, v10

    .line 378
    :cond_8
    invoke-direct {v0, v1, v8, v9}, Lcom/netease/mrzhna/ImagePicker;->processBitmapCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    .line 380
    invoke-direct {v0, v3}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 386
    :cond_9
    iget v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_save_mode:I

    iget v7, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_max_width:I

    iget v8, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_max_height:I

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/netease/mrzhna/ImagePicker;->processImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    .line 388
    invoke-direct {v0, v5}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 392
    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_width:I

    .line 393
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_height:I

    .line 394
    iget v5, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_width:I

    if-lez v5, :cond_f

    if-gtz v2, :cond_b

    goto :goto_2

    .line 399
    :cond_b
    iget-object v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_name:Ljava/lang/String;

    const-string v3, "_cropped"

    invoke-direct {v0, v2, v1, v3}, Lcom/netease/mrzhna/ImagePicker;->createImageFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    .line 401
    invoke-direct {v0, v1, v2}, Lcom/netease/mrzhna/ImagePicker;->saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 402
    invoke-direct {v0, v4}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 408
    :cond_c
    iget-object v1, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_file:Ljava/io/File;

    if-eqz v1, :cond_d

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_d
    move-object v10, v6

    .line 412
    :goto_1
    iget-object v1, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_file:Ljava/io/File;

    if-eqz v1, :cond_e

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :cond_e
    move-object v13, v6

    const/4 v7, 0x0

    .line 415
    iget v8, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_width:I

    iget v9, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_height:I

    iget v11, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_width:I

    iget v12, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_height:I

    iget v14, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_width:I

    iget v15, v0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_height:I

    invoke-static/range {v7 .. v15}, Lcom/netease/neox/NativeInterface;->NativeOnPickExResult(IIILjava/lang/String;IILjava/lang/String;II)V

    goto :goto_3

    .line 395
    :cond_f
    :goto_2
    invoke-direct {v0, v3}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 422
    :cond_10
    new-instance v1, Lcom/soundcloud/android/crop/Crop;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/soundcloud/android/crop/Crop;-><init>(Landroid/net/Uri;)V

    .line 427
    iget-object v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/soundcloud/android/crop/Crop;->output(Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    .line 428
    iget v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_crop_aspect_width:I

    if-lez v2, :cond_11

    iget v3, v0, Lcom/netease/mrzhna/ImagePicker;->m_crop_aspect_height:I

    if-lez v3, :cond_11

    .line 429
    invoke-virtual {v1, v2, v3}, Lcom/soundcloud/android/crop/Crop;->withAspect(II)Lcom/soundcloud/android/crop/Crop;

    .line 431
    :cond_11
    iget-object v2, v0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/app/Activity;)V

    :goto_3
    return-void

    .line 352
    :cond_12
    :goto_4
    iget-object v1, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_file:Ljava/io/File;

    if-eqz v1, :cond_13

    .line 353
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :cond_13
    move-object v10, v6

    const/4 v7, 0x0

    .line 355
    iget v8, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_width:I

    iget v9, v0, Lcom/netease/mrzhna/ImagePicker;->m_ori_img_height:I

    iget v11, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_width:I

    iget v12, v0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_height:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v7 .. v15}, Lcom/netease/neox/NativeInterface;->NativeOnPickExResult(IIILjava/lang/String;IILjava/lang/String;II)V

    return-void

    .line 334
    :cond_14
    :goto_5
    invoke-direct {v0, v5}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void

    .line 312
    :cond_15
    :goto_6
    invoke-direct {v0, v2}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    return-void
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 566
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 572
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v2, ".jpg"

    .line 573
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, p2, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_1
    const-string v2, ".png"

    .line 577
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 578
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, p2, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 584
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 586
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    .line 568
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private startCameraActivity()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    .line 235
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    iget-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    iget v2, p0, Lcom/netease/mrzhna/ImagePicker;->REQUEST_CAPTURE:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 241
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    :goto_0
    return-void
.end method

.method private startPhotoAlbumActivity()V
    .locals 3

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    const/16 v2, 0x23ca

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 253
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
    .locals 0

    .line 133
    iput p2, p0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_save_mode:I

    .line 134
    iput-object p3, p0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_name:Ljava/lang/String;

    .line 135
    iput p4, p0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_max_width:I

    .line 136
    iput p5, p0, Lcom/netease/mrzhna/ImagePicker;->m_picked_img_max_height:I

    .line 138
    iput p6, p0, Lcom/netease/mrzhna/ImagePicker;->m_crop_mode:I

    .line 139
    iput p7, p0, Lcom/netease/mrzhna/ImagePicker;->m_crop_aspect_width:I

    .line 140
    iput p8, p0, Lcom/netease/mrzhna/ImagePicker;->m_crop_aspect_height:I

    .line 142
    iput p9, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_save_mode:I

    .line 143
    iput-object p10, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_name:Ljava/lang/String;

    .line 144
    iput p11, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_max_width:I

    .line 145
    iput p12, p0, Lcom/netease/mrzhna/ImagePicker;->m_cropped_img_max_height:I

    const/4 p2, 0x0

    .line 148
    :try_start_0
    iget-object p3, p0, Lcom/netease/mrzhna/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 149
    iget-object p3, p0, Lcom/netease/mrzhna/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 151
    :cond_0
    iget-object p3, p0, Lcom/netease/mrzhna/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 152
    iget-object p3, p0, Lcom/netease/mrzhna/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p3, 0x1

    if-nez p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mrzhna/ImagePicker$1;

    invoke-direct {p2, p0}, Lcom/netease/mrzhna/ImagePicker$1;-><init>(Lcom/netease/mrzhna/ImagePicker;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_3

    .line 170
    iget-object p1, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mrzhna/ImagePicker$2;

    invoke-direct {p2, p0}, Lcom/netease/mrzhna/ImagePicker$2;-><init>(Lcom/netease/mrzhna/ImagePicker;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 p4, 0x2

    if-ne p1, p4, :cond_5

    .line 181
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-direct {p1, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x7f0b003d

    .line 182
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const p4, 0x7f060007

    .line 183
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 187
    iget-boolean p2, p0, Lcom/netease/mrzhna/ImagePicker;->m_support_camera:Z

    if-eqz p2, :cond_4

    const p2, 0x7f0b003b

    .line 188
    new-instance p4, Lcom/netease/mrzhna/ImagePicker$3;

    invoke-direct {p4, p0}, Lcom/netease/mrzhna/ImagePicker$3;-><init>(Lcom/netease/mrzhna/ImagePicker;)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    const p2, 0x7f0b003c

    .line 197
    new-instance p4, Lcom/netease/mrzhna/ImagePicker$4;

    invoke-direct {p4, p0}, Lcom/netease/mrzhna/ImagePicker$4;-><init>(Lcom/netease/mrzhna/ImagePicker;)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f0b0011

    .line 205
    new-instance p4, Lcom/netease/mrzhna/ImagePicker$5;

    invoke-direct {p4, p0}, Lcom/netease/mrzhna/ImagePicker$5;-><init>(Lcom/netease/mrzhna/ImagePicker;)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    iget-object p2, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    new-instance p4, Lcom/netease/mrzhna/ImagePicker$6;

    invoke-direct {p4, p0, p1}, Lcom/netease/mrzhna/ImagePicker$6;-><init>(Lcom/netease/mrzhna/ImagePicker;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p2, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return p3

    :cond_5
    return p2

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 494
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public init()Z
    .locals 5

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    const-string v2, "neox_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "NeoXRoot"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Documents/picked_image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_pick_root:Ljava/lang/String;

    .line 94
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mrzhna/ImagePicker;->m_pick_root:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    return v3

    .line 106
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    return v3

    .line 118
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "neox_capture_tmp.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_capture_file:Ljava/io/File;

    .line 119
    new-instance v0, Ljava/io/File;

    const-string v2, "neox_crop_tmp.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_crop_file:Ljava/io/File;

    .line 121
    iget-object v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mrzhna/ImagePicker;->m_support_camera:Z

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mrzhna/ImagePicker;->REQUEST_CAPTURE:I

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    :catch_1
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 259
    iget v0, p0, Lcom/netease/mrzhna/ImagePicker;->REQUEST_CAPTURE:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_1

    .line 261
    iget-object p1, p0, Lcom/netease/mrzhna/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/netease/mrzhna/ImagePicker;->m_capture_file:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->processPickedImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0, v2}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 269
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    goto :goto_0

    .line 271
    :cond_2
    invoke-direct {p0, v2}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x23ca

    if-ne p1, v0, :cond_6

    if-ne p2, v3, :cond_4

    .line 275
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->processPickedImage(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 278
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    goto :goto_0

    .line 280
    :cond_5
    invoke-direct {p0, v2}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x1a35

    if-ne p1, v0, :cond_a

    const/4 p1, 0x4

    if-ne p2, v3, :cond_8

    .line 284
    iget-object p2, p0, Lcom/netease/mrzhna/ImagePicker;->m_crop_file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 285
    invoke-static {p3}, Lcom/soundcloud/android/crop/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    .line 286
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->processCroppedImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 288
    :cond_7
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    goto :goto_0

    :cond_8
    if-nez p2, :cond_9

    .line 291
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    goto :goto_0

    .line 293
    :cond_9
    invoke-direct {p0, p1}, Lcom/netease/mrzhna/ImagePicker;->fail(I)V

    :cond_a
    :goto_0
    return-void
.end method
