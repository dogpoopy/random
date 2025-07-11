.class public final synthetic Lcom/google/android/gms/internal/measurement/zzgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/measurement/zzgw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzgw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zza:Lcom/google/android/gms/internal/measurement/zzgw;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zza:Lcom/google/android/gms/internal/measurement/zzgw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzgw;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
