.class final Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;
.super Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;
.source "AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private durationLimitMillis:Ljava/lang/Long;

.field private fileSizeLimit:Ljava/lang/Long;

.field private location:Landroid/location/Location;

.field private parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal;
    .locals 10

    .line 129
    iget-object v0, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->fileSizeLimit:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fileSizeLimit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->durationLimitMillis:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " durationLimitMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parcelFileDescriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    new-instance v0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->fileSizeLimit:Ljava/lang/Long;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->durationLimitMillis:Ljava/lang/Long;

    .line 143
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->location:Landroid/location/Location;

    iget-object v8, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal;-><init>(JJLandroid/location/Location;Landroid/os/ParcelFileDescriptor;Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$1;)V

    return-object v0

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic build()Landroidx/camera/video/OutputOptions$OutputOptionsInternal;
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->build()Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal;

    move-result-object v0

    return-object v0
.end method

.method setDurationLimitMillis(J)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;
    .locals 0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->durationLimitMillis:Ljava/lang/Long;

    return-object p0
.end method

.method bridge synthetic setDurationLimitMillis(J)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->setDurationLimitMillis(J)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;

    move-result-object p1

    return-object p1
.end method

.method setFileSizeLimit(J)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;
    .locals 0

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->fileSizeLimit:Ljava/lang/Long;

    return-object p0
.end method

.method bridge synthetic setFileSizeLimit(J)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->setFileSizeLimit(J)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;

    move-result-object p1

    return-object p1
.end method

.method setLocation(Landroid/location/Location;)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->location:Landroid/location/Location;

    return-object p0
.end method

.method bridge synthetic setLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->setLocation(Landroid/location/Location;)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;

    move-result-object p1

    return-object p1
.end method

.method setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/video/FileDescriptorOutputOptions$FileDescriptorOutputOptionsInternal$Builder;
    .locals 1

    const-string v0, "Null parcelFileDescriptor"

    .line 121
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Landroidx/camera/video/AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal$Builder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method
